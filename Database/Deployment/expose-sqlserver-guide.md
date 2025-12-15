# دليل فتح SQL Server للإنترنت باستخدام ngrok

## ⚠️ تحذير مهم جداً

**هذا الحل للتجربة فقط! ليس للاستخدام الفعلي (Production)**

المخاطر:
- 🔴 عرضة للاختراق
- 🔴 قد تُسرق البيانات
- 🔴 هجمات Brute Force
- 🔴 استنزاف موارد الجهاز

**استخدم Azure SQL أو خدمة سحابية للإنتاج!**

---

## الخطوة 1: إعداد SQL Server

### أ. تفعيل SQL Server Authentication

1. افتح **SQL Server Management Studio (SSMS)**
2. اتصل بـ `localhost\SQLEXPRESS`
3. Right-click على Server → **Properties**
4. اذهب إلى **Security**
5. اختر **SQL Server and Windows Authentication mode**
6. اضغط OK

### ب. إنشاء مستخدم قوي

```sql
-- في SSMS، نفذ هذا الكود:

USE master;
GO

-- إنشاء Login بكلمة سر قوية جداً
CREATE LOGIN insight_remote 
WITH PASSWORD = 'Xy9$Qm#2Lp!8Kw@5Rt';
GO

-- الانتقال لقاعدة البيانات
USE Insight;
GO

-- إنشاء User
CREATE USER insight_remote FOR LOGIN insight_remote;
GO

-- منح الصلاحيات (فقط المطلوب)
ALTER ROLE db_datareader ADD MEMBER insight_remote;
ALTER ROLE db_datawriter ADD MEMBER insight_remote;
GO

-- التحقق
SELECT name, type_desc FROM sys.database_principals WHERE name = 'insight_remote';
```

### ج. تفعيل TCP/IP

1. افتح **SQL Server Configuration Manager**
2. اذهب إلى:
   ```
   SQL Server Network Configuration 
   → Protocols for SQLEXPRESS
   ```
3. Right-click على **TCP/IP** → **Enable**
4. Right-click مرة أخرى → **Properties**
5. في تاب **IP Addresses**:
   - اذهب إلى **IPALL**
   - ضع **TCP Port**: `1433`
6. اضغط OK

### د. إعادة تشغيل SQL Server

```powershell
# في PowerShell (كـ Admin)
net stop "MSSQL$SQLEXPRESS"
net start "MSSQL$SQLEXPRESS"
```

---

## الخطوة 2: تثبيت وإعداد ngrok

### أ. التسجيل والحصول على Token

1. اذهب إلى https://dashboard.ngrok.com/signup
2. سجل حساب مجاني (يمكن بـ Google)
3. بعد التسجيل، اذهب إلى:
   https://dashboard.ngrok.com/get-started/your-authtoken
4. **انسخ الـ Authtoken**

### ب. تحميل ngrok

**الطريقة 1: يدوي**
1. حمّل من: https://ngrok.com/download
2. اختر Windows (64-bit)
3. فك الضغط في `C:\ngrok\`

**الطريقة 2: PowerShell**
```powershell
# إنشاء المجلد
New-Item -ItemType Directory -Path "C:\ngrok" -Force

# التحميل
Invoke-WebRequest -Uri "https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-windows-amd64.zip" -OutFile "$env:TEMP\ngrok.zip"

# فك الضغط
Expand-Archive "$env:TEMP\ngrok.zip" -DestinationPath "C:\ngrok" -Force

# إضافة للـ PATH
[Environment]::SetEnvironmentVariable("Path", $env:Path + ";C:\ngrok", "User")
```

### ج. المصادقة

```powershell
# استبدل YOUR_AUTH_TOKEN بالـ token من ngrok
cd C:\ngrok
.\ngrok config add-authtoken YOUR_AUTH_TOKEN
```

**مثال:**
```powershell
.\ngrok config add-authtoken 2abcXYZ123_defGHI456jklMNO789pqrSTU
```

---

## الخطوة 3: تشغيل Tunnel

```powershell
# تشغيل ngrok
cd C:\ngrok
.\ngrok tcp 1433
```

**ستظهر لك شاشة مثل:**
```
Session Status                online
Account                       your-email@example.com
Version                       3.x.x
Region                        United States (us)
Latency                       45ms
Forwarding                    tcp://0.tcp.ngrok.io:12345 -> localhost:1433
```

**مهم جداً:** احفظ الـ URL والبورت!
- **Host**: `0.tcp.ngrok.io`
- **Port**: `12345` (الرقم سيختلف)

⚠️ **لا تغلق هذه النافذة!** اتركها شغالة

---

## الخطوة 4: اختبار الاتصال

### من نفس الجهاز:
```powershell
sqlcmd -S 0.tcp.ngrok.io,12345 -U insight_remote -P "Xy9$Qm#2Lp!8Kw@5Rt" -Q "SELECT @@VERSION"
```

### من جهاز آخر:
نفس الأمر، لكن من أي جهاز متصل بالإنترنت!

---

## الخطوة 5: ربط Backend

### في `Back-End/.env`:

```env
# SQL Server Configuration - ngrok
DB_HOST=0.tcp.ngrok.io
DB_PORT=12345
DB_USER=insight_remote
DB_PASSWORD=Xy9$Qm#2Lp!8Kw@5Rt
DB_NAME=Insight
DB_ENCRYPT=true
DB_TRUST_SERVER_CERTIFICATE=true
```

### اختبار في Node.js:

أنشئ `test-remote-connection.js`:

```javascript
const sql = require('mssql');
require('dotenv').config();

const config = {
  server: process.env.DB_HOST,
  port: parseInt(process.env.DB_PORT),
  user: process.env.DB_USER,
  password: process.env.DB_PASSWORD,
  database: process.env.DB_NAME,
  options: {
    encrypt: true,
    trustServerCertificate: true,
    enableArithAbort: true
  }
};

async function testConnection() {
  try {
    console.log('Connecting to:', config.server + ':' + config.port);
    const pool = await sql.connect(config);
    
    const result = await pool.request().query('SELECT COUNT(*) as count FROM [User]');
    console.log('✅ Connected! Total users:', result.recordset[0].count);
    
    await pool.close();
  } catch (err) {
    console.error('❌ Connection failed:', err.message);
  }
}

testConnection();
```

شغّله:
```powershell
cd Back-End
node test-remote-connection.js
```

---

## الخطوة 6: ربط Python

في `Python/config/database.py`:

```python
import pyodbc
import os
from dotenv import load_dotenv

load_dotenv()

# Connection string for remote SQL Server via ngrok
conn_str = (
    f"DRIVER={{ODBC Driver 17 for SQL Server}};"
    f"SERVER={os.getenv('DB_HOST')},{os.getenv('DB_PORT')};"
    f"DATABASE={os.getenv('DB_NAME')};"
    f"UID={os.getenv('DB_USER')};"
    f"PWD={os.getenv('DB_PASSWORD')};"
    f"Encrypt=yes;"
    f"TrustServerCertificate=yes;"
)

def get_connection():
    return pyodbc.connect(conn_str)

def test_connection():
    try:
        conn = get_connection()
        cursor = conn.cursor()
        cursor.execute("SELECT COUNT(*) FROM [User]")
        count = cursor.fetchone()[0]
        print(f"✅ Connected! Total users: {count}")
        conn.close()
        return True
    except Exception as e:
        print(f"❌ Connection failed: {e}")
        return False

if __name__ == "__main__":
    test_connection()
```

---

## جعل ngrok يعمل تلقائياً (اختياري)

### أ. إنشاء Batch Script

أنشئ `start-ngrok.bat` في `C:\ngrok\`:

```batch
@echo off
cd C:\ngrok
start "ngrok SQL Server" ngrok tcp 1433
echo ngrok started! Check the window for the connection URL.
pause
```

### ب. تشغيله مع Windows (اختياري)

1. اضغط `Win + R`
2. اكتب `shell:startup`
3. انسخ `start-ngrok.bat` إلى المجلد اللي فتح

⚠️ **تحذير:** ngrok سيعمل تلقائياً مع كل تشغيل للويندوز!

---

## الأمان - قائمة التحقق

- ✅ استخدم كلمة سر قوية جداً (16+ حرف)
- ✅ لا تشارك الـ URL على الإنترنت
- ✅ راقب الاتصالات:
  ```sql
  SELECT * FROM sys.dm_exec_sessions WHERE is_user_process = 1;
  ```
- ✅ غيّر كلمة السر بانتظام
- ✅ لا تستخدم حساب `sa`
- ✅ أغلق ngrok عند عدم الحاجة
- ✅ اعمل Backup دوري

---

## استكشاف الأخطاء

### ❌ "Cannot connect to SQL Server"
```powershell
# تحقق من TCP/IP
netstat -an | findstr 1433

# يجب أن تشوف:
# TCP    0.0.0.0:1433      LISTENING
```

### ❌ "Login failed for user"
```sql
-- تحقق من المستخدم
USE master;
SELECT name, type_desc, is_disabled FROM sys.server_principals WHERE name = 'insight_remote';

-- تحقق من الصلاحيات
USE Insight;
EXEC sp_helpuser 'insight_remote';
```

### ❌ ngrok يعطي خطأ "ERR_NGROK_108"
- تحقق من صحة الـ authtoken
- تحقق من الاتصال بالإنترنت
- جرب `ngrok config check`

### ❌ الـ URL يتغير كل مرة
- هذا طبيعي مع ngrok المجاني
- للحصول على domain ثابت، upgrade لـ ngrok Pro ($8/شهر)

---

## البدائل الأفضل للإنتاج

### Azure SQL Database ⭐
```bash
# لا يحتاج ngrok، متاح مباشرة على الإنترنت
Server: your-server.database.windows.net
Port: 1433
```

### AWS RDS for SQL Server
```bash
Server: your-db.region.rds.amazonaws.com
Port: 1433
```

---

## إيقاف ngrok

```powershell
# في نافذة ngrok
Ctrl + C

# أو من Task Manager
# ابحث عن "ngrok.exe" → End Task
```

---

## الخلاصة

✅ **المميزات:**
- سريع في الإعداد
- لا يحتاج إعدادات Router
- مجاني للاستخدام المحدود

⚠️ **العيوب:**
- غير آمن
- URL يتغير (مع Free tier)
- يحتاج اللابتوب يكون شغال
- ليس للإنتاج

**الحل الأمثل:** استخدم Azure SQL Database للمشاريع الحقيقية! 🚀
