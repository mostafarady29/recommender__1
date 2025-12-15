# دليل LocalTunnel لفتح SQL Server

## نظرة عامة
LocalTunnel هو بديل مجاني تماماً لـ ngrok، لا يحتاج بطاقة ائتمان.

⚠️ **ملاحظة**: قد لا يكون مستقراً مثل ngrok، لكنه مجاني 100%

---

## الخطوة 1: تثبيت Node.js (إذا لم يكن مثبت)

تحقق أولاً:
```powershell
node --version
```

إذا لم يكن مثبت، حمّله من: https://nodejs.org/

---

## الخطوة 2: تثبيت LocalTunnel

```powershell
npm install -g localtunnel
```

---

## الخطوة 3: تثبيت TCP Proxy (مطلوب لـ SQL Server)

LocalTunnel يدعم HTTP فقط، لذا نحتاج TCP proxy:

```powershell
npm install -g tcp-proxy-cli
```

---

## الخطوة 4: تشغيل TCP Proxy

```powershell
# تشغيل proxy على port 3000 يوجه لـ SQL Server
tcp-proxy -p 3000 -h localhost -t 1433
```

اترك هذه النافذة مفتوحة!

---

## الخطوة 5: تشغيل LocalTunnel

في نافذة PowerShell جديدة:

```powershell
lt --port 3000
```

**ستحصل على URL مثل:**
```
your url is: https://random-name-12.loca.lt
```

---

## الخطوة 6: الاتصال من Backend

⚠️ **مشكلة**: LocalTunnel يدعم HTTPS فقط، وSQL Server يحتاج TCP مباشر.

**الحل الأفضل: استخدام SSH Tunnel بدلاً من ذلك**

---

## بديل أفضل: SSH Tunnel مع Serveo

```powershell
# تثبيت SSH client (موجود في Windows 10+)
ssh -R 1433:localhost:1433 serveo.net
```

**ستحصل على:**
```
Forwarding TCP connections from serveo.net:12345
```

استخدم:
- Host: `serveo.net`
- Port: `12345` (الرقم اللي يعطيك إياه)

---

## الطريقة الموصى بها: Cloudflare Tunnel

لأن LocalTunnel و Serveo غير مستقرين، **Cloudflare Tunnel** أفضل:

### 1. تحميل cloudflared
```powershell
Invoke-WebRequest -Uri "https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-windows-amd64.exe" -OutFile "C:\cloudflared\cloudflared.exe"
```

### 2. المصادقة
```powershell
C:\cloudflared\cloudflared.exe tunnel login
```

### 3. إنشاء Tunnel
```powershell
C:\cloudflared\cloudflared.exe tunnel create sql-server
```

### 4. تشغيل
```powershell
C:\cloudflared\cloudflared.exe access tcp --hostname sql.yourdomain.com --url localhost:1433
```

---

## الخلاصة

| الحل | مجاني؟ | مستقر؟ | سهل؟ | موصى به؟ |
|------|---------|--------|------|-----------|
| ngrok | ⚠️ يطلب بطاقة | ✅ جداً | ✅ جداً | ⚠️ إذا عندك بطاقة |
| LocalTunnel | ✅ | ❌ | ⚠️ | ❌ لا يدعم TCP |
| Serveo SSH | ✅ | ⚠️ | ✅ | ⚠️ للتجربة فقط |
| Cloudflare | ✅ | ✅ | ⚠️ | ✅ **الأفضل!** |
| Azure SQL | 💰 | ✅✅✅ | ✅ | ✅✅ **للإنتاج** |

---

## التوصية النهائية

استخدم **Cloudflare Tunnel** - هو الحل المجاني الأكثر استقراراً!

أو أفضل: **Azure SQL Database** للمشاريع الحقيقية.
