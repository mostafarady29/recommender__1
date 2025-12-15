# دليل Cloudflare Tunnel لـ SQL Server

## المميزات

- ✅ **مجاني 100%** - بدون حدود
- ✅ **مستقر وموثوق** - من Cloudflare
- ✅ **آمن** - HTTPS/TLS مدمج
- ✅ **Domain ثابت** - لا يتغير
- ✅ **حماية DDoS** - مدمجة

---

## المتطلبات

- حساب Cloudflare (مجاني)
- SQL Server مُعد ومفعّل TCP/IP

---

## الخطوة 1: إنشاء حساب Cloudflare

1. اذهب إلى: https://dash.cloudflare.com/sign-up
2. سجل حساب مجاني
3. تحقق من البريد الإلكتروني

---

## الخطوة 2: تحميل cloudflared

### تلقائياً (باستخدام السكريبت):

```powershell
cd d:\downloads\Insight-main\Database\Deployment
.\setup-cloudflare-tunnel.ps1
```

### يدوياً:

```powershell
# إنشاء المجلد
New-Item -ItemType Directory -Path "C:\cloudflared" -Force

# تحميل cloudflared
Invoke-WebRequest -Uri "https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-windows-amd64.exe" -OutFile "C:\cloudflared\cloudflared.exe"

# إضافة للـ PATH
$env:Path += ";C:\cloudflared"
```

---

## الخطوة 3: المصادقة

```powershell
cd C:\cloudflared
.\cloudflared.exe tunnel login
```

**سيفتح متصفح:**
- اختر Domain إذا كان عندك (أو اختر Free subdomain)
- اضغط **Authorize**

**ستظهر رسالة:**
```
You have successfully logged in.
```

---

## الخطوة 4: إنشاء Tunnel

```powershell
.\cloudflared.exe tunnel create sql-server
```

**النتيجة:**
```
Created tunnel sql-server with id: xxxxx-xxxx-xxxx-xxxx
```

احفظ الـ **Tunnel ID**!

---

## الخطوة 5: إنشاء Configuration File

أنشئ ملف `config.yml` في `C:\cloudflared\`:

```yaml
tunnel: sql-server
credentials-file: C:\cloudflared\xxxxx-xxxx-xxxx-xxxx.json

ingress:
  - hostname: sql.yourdomain.com
    service: tcp://localhost:1433
  - service: http_status:404
```

**ملاحظة:** استبدل:
- `xxxxx-xxxx-xxxx-xxxx.json` بالملف اللي أُنشئ
- `sql.yourdomain.com` بـ subdomain من Cloudflare

---

## الخطوة 6: ربط الـ DNS (اختياري)

إذا عندك domain:

```powershell
.\cloudflared.exe tunnel route dns sql-server sql.yourdomain.com
```

إذا ما عندكش، استخدم الـ URL المؤقت.

---

## الخطوة 7: تشغيل Tunnel

```powershell
.\cloudflared.exe tunnel run sql-server
```

**أو باستخدام config file:**
```powershell
.\cloudflared.exe --config C:\cloudflared\config.yml tunnel run
```

---

## الطريقة البسيطة (بدون DNS)

للتجربة السريعة بدون domain:

```powershell
.\cloudflared.exe access tcp --hostname sql-temp.trycloudflare.com --url localhost:1433
```

**ستحصل على:**
```
INF  +--------------------------------------------------------------------------------------------+
INF  |  Your free tunnel has started! Visit it:                                                   |
INF  |    https://sql-temp.trycloudflare.com                                                      |
INF  +--------------------------------------------------------------------------------------------+
```

⚠️ **لكن هذا للـ HTTP** - لـ SQL Server نحتاج طريقة أخرى.

---

## الطريقة الصحيحة لـ SQL Server

### استخدام Cloudflare Access

```powershell
# تشغيل tunnel مع TCP support
.\cloudflared.exe access tcp --hostname localhost --url tcp://localhost:1433
```

**ثم من Backend:**

```javascript
// استخدم cloudflared كـ proxy
// هتحتاج تثبت cloudflared على Backend server كمان
```

---

## الحل الأبسط: Cloudflare Argo Tunnel

```powershell
# بديل أبسط - غير مستند رسمي لكن يعمل
.\cloudflared.exe tunnel --url tcp://localhost:1433
```

---

## المشكلة

**للأسف**: Cloudflare Tunnel صُمم أساساً لـ HTTP/HTTPS، ودعم TCP محدود ومعقد.

---

## التوصية النهائية

بعد البحث، **أفضل الحلول المجانية للـ TCP:**

### 1️⃣ ngrok مع بطاقة تحقق (موصى به)
- أضف بطاقة للتحقق (لن يُخصم شيء)
- الأكثر استقراراً

### 2️⃣ Azure SQL Free Tier (الأفضل)
- مجاني حتى 32GB
- احترافي تماماً
- لا يحتاج tunnel

---

## هل تريد:

1. **ngrok** - أضيف بطاقة للتحقق (سهل)
2. **Azure SQL** - إعداد قاعدة بيانات سحابية (أفضل)
3. **SSH Tunnel** - للتجربة فقط (غير مستقر)
