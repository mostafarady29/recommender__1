# دليل سريع: SSH Tunnel لفتح SQL Server (مجاني 100%)

## لماذا SSH Tunnel؟

- ✅ **مجاني 100%** - بدون بطاقة
- ✅ **بدون تثبيت** - SSH موجود في Windows 10+
- ✅ **يدعم TCP** - مناسب لـ SQL Server
- ⚠️ **غير مستقر** - للتجربة فقط

---

## الطريقة: استخدام serveo.net

### الطريقة الأولى (موصى بها): localhost.run

```powershell
ssh -R 1433:localhost:1433 localhost.run
```

**ستحصل على:**
```
Connect to your tunnel using: ssh localhost.run -p XXXXX
SQL Server: localhost.run:XXXXX
```

### الطريقة الثانية: serveo.net

```powershell
ssh -R 1433:localhost:1433 serveo.net
```

**ستحصل على:**
```
Forwarding TCP connections from serveo.net:XXXXX
```

---

## الاستخدام

### من Backend:

```env
DB_HOST=localhost.run
# أو
# DB_HOST=serveo.net

DB_PORT=XXXXX  # البورت اللي أعطاك إياه
DB_USER=insight_remote
DB_PASSWORD=Xy9$Qm#2Lp!8Kw@5Rt
DB_NAME=Insight
DB_ENCRYPT=true
DB_TRUST_SERVER_CERTIFICATE=true
```

---

## المشاكل المحتملة

### ❌ serveo.net/localhost.run لا يعمل أحياناً
- الخدمة مجانية وقد تكون مشغولة
- جرب في وقت آخر

### ❌ "Connection refused"
- تأكد من TCP/IP مفعّل في SQL Server
- تأكد من SQL Server شغال على port 1433

---

## الحل الأفضل والأكثر استقراراً

للأسف، الحلول المجانية كلها غير مستقرة. إليك التوصيات:

### للتطوير والتجربة:
1. **ngrok** (مع بطاقة للتحقق - لن يتم خصم شيء)
2. **Cloudflare Tunnel** (مجاني واحترافي)

### للإنتاج:
1. **Azure SQL Database** - $5-15/شهر
   - Free tier متاح
   - آمن ومستقر
   - نسخ احتياطي تلقائي

---

## هل تريد المساعدة في:

1. ✅ **إعداد Cloudflare Tunnel** (مجاني واحترافي)
2. ✅ **إعداد Azure SQL** (أفضل للإنتاج)
3. ⚠️ تجربة SSH Tunnel (غير مستقر)

قولي! 😊
