# دليل إعداد MySQL Server المحلي على Windows

## نظرة عامة
هذا الدليل يشرح كيفية تحويل اللابتوب بتاعك لسيرفر قاعدة بيانات MySQL محلي.

---

## الخطوة 1: تثبيت MySQL Server

### الطريقة 1: باستخدام Chocolatey (موصى به)

```powershell
# تثبيت MySQL
choco install mysql -y

# بعد التثبيت، تشغيل Service
net start MySQL
```

### الطريقة 2: التحميل اليدوي

1. اذهب إلى https://dev.mysql.com/downloads/mysql/
2. حمّل **MySQL Community Server** (Windows)
3. اختر **MySQL Installer**
4. شغّل الـ Installer:
   - اختر **Server only** أو **Developer Default**
   - اختار Strong Password لـ root
   - خلي Service يبدأ تلقائياً مع Windows

---

## الخطوة 2: التحقق من التثبيت

```powershell
# تحقق من الإصدار
mysql --version

# تحقق من أن Service شغال
Get-Service MySQL*
# أو
net start MySQL
```

**النتيجة المتوقعة:**
```
mysql  Ver 8.0.xx for Win64
```

---

## الخطوة 3: الدخول إلى MySQL

```powershell
# الدخول كـ root
mysql -u root -p
# أدخل الباسورد اللي اخترته
```

**هتشوف:**
```
mysql>
```

---

## الخطوة 4: إنشاء قاعدة البيانات والمستخدم

```sql
-- 1. إنشاء قاعدة البيانات
CREATE DATABASE Insight CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- 2. إنشاء مستخدم للتطبيق
CREATE USER 'insight_user'@'localhost' IDENTIFIED BY 'Insight@2024!';

-- 3. منح الصلاحيات
GRANT ALL PRIVILEGES ON Insight.* TO 'insight_user'@'localhost';
FLUSH PRIVILEGES;

-- 4. التحقق
SHOW DATABASES;
SELECT User, Host FROM mysql.user WHERE User = 'insight_user';

-- 5. الخروج
EXIT;
```

---

## الخطوة 5: رفع Schema

```powershell
# الانتقال لمجلد المشروع
cd d:\downloads\Insight-main\Database\Deployment

# رفع Schema
mysql -u root -p Insight < mysql-schema.sql

# التحقق
mysql -u root -p Insight -e "SHOW TABLES;"
```

**النتيجة المتوقعة:** قائمة بـ 13 جدول

---

## الخطوة 6: رفع البيانات

```powershell
# رفع الملفات بالترتيب
mysql -u root -p Insight < data\Fields.sql
mysql -u root -p Insight < data\Users_Researchers_Admins.sql
mysql -u root -p Insight < data\Authors_Authors_Paper.sql
mysql -u root -p Insight < data\Papers_Papers_Keywords.sql
mysql -u root -p Insight < data\Download_Review_Search.sql

# التحقق
mysql -u root -p Insight -e "SELECT COUNT(*) as total_users FROM User;"
mysql -u root -p Insight -e "SELECT COUNT(*) as total_fields FROM Field;"
```

**النتيجة المتوقعة:**
- Users: ~800
- Fields: 10

---

## الخطوة 7: ربط Backend

### 1. تحديث `.env` في Backend

افتح `d:\downloads\Insight-main\Back-End\.env` وحدّث:

```env
# Database Configuration - LOCAL SERVER
DB_HOST=localhost
DB_PORT=3306
DB_USER=insight_user
DB_PASSWORD=Insight@2024!
DB_NAME=Insight
DB_SSL=false
```

### 2. اختبار الاتصال

أنشئ ملف `test-db.js` في `Back-End/`:

```javascript
const mysql = require('mysql2/promise');
require('dotenv').config();

async function testConnection() {
  try {
    const connection = await mysql.createConnection({
      host: process.env.DB_HOST,
      port: process.env.DB_PORT,
      user: process.env.DB_USER,
      password: process.env.DB_PASSWORD,
      database: process.env.DB_NAME
    });
    
    console.log('✅ Connected to MySQL successfully!');
    
    const [users] = await connection.execute('SELECT COUNT(*) as count FROM User');
    console.log(`📊 Total users in database: ${users[0].count}`);
    
    const [papers] = await connection.execute('SELECT COUNT(*) as count FROM Paper');
    console.log(`📄 Total papers in database: ${papers[0].count}`);
    
    await connection.end();
    console.log('✅ Connection closed');
  } catch (error) {
    console.error('❌ Database connection failed:', error.message);
  }
}

testConnection();
```

شغّله:
```powershell
cd Back-End
node test-db.js
```

---

## الخطوة 8: ربط Python Chatbot

### 1. تحديث Database Config

افتح أو أنشئ `Python/config/database.py`:

```python
import mysql.connector
import os
from dotenv import load_dotenv

load_dotenv()

DB_CONFIG = {
    'host': os.getenv('DB_HOST', 'localhost'),
    'port': int(os.getenv('DB_PORT', 3306)),
    'user': os.getenv('DB_USER', 'insight_user'),
    'password': os.getenv('DB_PASSWORD', 'Insight@2024!'),
    'database': 'Insight',
    'charset': 'utf8mb4',
    'collation': 'utf8mb4_unicode_ci'
}

def get_connection():
    """Get MySQL database connection"""
    return mysql.connector.connect(**DB_CONFIG)

def test_connection():
    """Test database connection"""
    try:
        conn = get_connection()
        cursor = conn.cursor()
        
        cursor.execute("SELECT COUNT(*) FROM User")
        count = cursor.fetchone()[0]
        print(f"✅ Connected! Total users: {count}")
        
        cursor.close()
        conn.close()
        return True
    except Exception as e:
        print(f"❌ Connection failed: {e}")
        return False

if __name__ == "__main__":
    test_connection()
```

### 2. أنشئ `.env` في Python

```env
DB_HOST=localhost
DB_PORT=3306
DB_USER=insight_user
DB_PASSWORD=Insight@2024!
DB_NAME=Insight
```

### 3. اختبار
```powershell
cd Python
python config/database.py
```

---

## الوصول من جهاز آخر (اختياري)

إذا عايز Backend أو Frontend يشتغل من جهاز تاني على نفس الشبكة:

### 1. معرفة IP اللابتوب
```powershell
ipconfig | findstr "IPv4"
```
مثال: `192.168.1.100`

### 2. السماح بالاتصال من الشبكة
```sql
-- في MySQL
CREATE USER 'insight_user'@'%' IDENTIFIED BY 'Insight@2024!';
GRANT ALL PRIVILEGES ON Insight.* TO 'insight_user'@'%';
FLUSH PRIVILEGES;
```

### 3. تعديل MySQL Config
افتح `C:\ProgramData\MySQL\MySQL Server 8.0\my.ini`:

```ini
[mysqld]
bind-address = 0.0.0.0
```

restart MySQL:
```powershell
net stop MySQL
net start MySQL
```

### 4. فتح Firewall
```powershell
netsh advfirewall firewall add rule name="MySQL Server" dir=in action=allow protocol=TCP localport=3306
```

### 5. تحديث `.env` في Backend
```env
DB_HOST=192.168.1.100  # IP اللابتوب
```

---

## النسخ الاحتياطي

### Backup يدوي
```powershell
# نسخ احتياطي كامل
mysqldump -u root -p Insight > "D:\Backups\insight_$(Get-Date -Format 'yyyyMMdd').sql"

# استرجاع النسخة الاحتياطية
mysql -u root -p Insight < "D:\Backups\insight_20241214.sql"
```

### Backup تلقائي يومي
أنشئ ملف `backup-mysql.ps1`:

```powershell
$date = Get-Date -Format "yyyyMMdd_HHmmss"
$backupPath = "D:\Backups\MySQL"
$filename = "insight_backup_$date.sql"

# إنشاء المجلد إذا لم يكن موجود
if (!(Test-Path $backupPath)) {
    New-Item -ItemType Directory -Path $backupPath
}

# النسخ الاحتياطي
mysqldump -u root -pYourPassword Insight > "$backupPath\$filename"

# حذف النسخ الأقدم من 7 أيام
Get-ChildItem $backupPath -Filter "*.sql" | 
    Where-Object {$_.LastWriteTime -lt (Get-Date).AddDays(-7)} |
    Remove-Item
```

---

## استكشاف الأخطاء

### ❌ "Can't connect to MySQL server"
```powershell
# تحقق من Service
Get-Service MySQL*

# إعادة تشغيل
net stop MySQL
net start MySQL
```

### ❌ "Access denied for user 'insight_user'"
```sql
-- تحقق من الصلاحيات
SHOW GRANTS FOR 'insight_user'@'localhost';

-- إعادة منح الصلاحيات
GRANT ALL PRIVILEGES ON Insight.* TO 'insight_user'@'localhost';
FLUSH PRIVILEGES;
```

### ❌ "Port 3306 already in use"
```powershell
# معرفة البرنامج المستخدم للبورت
netstat -ano | findstr :3306

# إغلاق البرنامج (استبدل PID بالرقم)
taskkill /PID <PID> /F
```

### ❌ مشاكل encoding عربي
```sql
-- تحقق من charset
SHOW VARIABLES LIKE 'character%';

-- يجب أن تكون utf8mb4
-- إذا لم تكن، أعد إنشاء الجداول بـ utf8mb4
```

---

## الأمان

⚠️ **مهم جداً:**

1. **لا تستخدم root في الكود** - استخدم `insight_user`
2. **كلمة سر قوية** - استخدم باسورد معقد
3. **لا تشارك `.env`** - أضف `.env` لـ `.gitignore`
4. **Firewall** - فقط افتح Port 3306 إذا احتجت
5. **Backup منتظم** - اعمل نسخ احتياطي دورية

---

## الخلاصة

✅ **المميزات:**
- مجاني 100%
- سرعة عالية (local)
- تحكم كامل
- مناسب للتطوير

⚠️ **العيوب:**
- اللابتوب لازم يكون شغال
- غير مناسب للإنتاج
- تحتاج backup يدوي

---

## الخطوات التالية

1. ✅ ثبّت MySQL
2. ✅ أنشئ قاعدة البيانات
3. ✅ ارفع Schema والبيانات
4. ✅ اربط Backend
5. ✅ اربط Python
6. 🧪 اختبر التطبيق كامل
7. 🚀 ابدأ التطوير!

---

**جاهز للعمل! إذا واجهت أي مشكلة، راجع قسم استكشاف الأخطاء أو اسأل.** 💪
