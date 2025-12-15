# SSH Tunnel - الحل المجاني 100%

## ✅ ببلاش تماماً - بدون بطاقات!

⚠️ **تحذير**: غير مستقر - للتجربة فقط

---

## الخطوة 1: تفعيل TCP/IP (إذا لم يكن مفعل)

1. افتح **SQL Server Configuration Manager**
2. اذهب إلى: **SQL Server Network Configuration → Protocols for SQLEXPRESS**
3. فعّل **TCP/IP**
4. في Properties → IP Addresses → IPALL → TCP Port: `1433`
5. أعد تشغيل SQL Server:
   ```powershell
   net stop "MSSQL$SQLEXPRESS"
   net start "MSSQL$SQLEXPRESS"
   ```

---

## الخطوة 2: تشغيل SSH Tunnel

### الطريقة 1: localhost.run (موصى بها)

```powershell
ssh -R 80:localhost:1433 localhost.run
```

**ستحصل على:**
```
Connect to your HTTP tunnel via: https://xxxxx.lhr.life
Connect to your TCP tunnel via: localhost.run:XXXXX
```

📝 احفظ الـ **localhost.run:XXXXX**

### الطريقة 2: serveo.net

```powershell
ssh -R 1433:localhost:1433 serveo.net
```

**ستحصل على:**
```
Forwarding TCP connections from serveo.net:XXXXX
```

---

## الخطوة 3: اختبار الاتصال

من نفس الجهاز أو من جهاز آخر:

```powershell
sqlcmd -S localhost.run,XXXXX -U insight_remote -P "Xy9`$Qm#2Lp!8Kw@5Rt" -Q "SELECT @@VERSION"
```

استبدل `XXXXX` بالبورت الفعلي.

---

## الخطوة 4: ربط Backend

في `Back-End/.env`:

```env
DB_HOST=localhost.run
# أو serveo.net
DB_PORT=XXXXX
DB_USER=insight_remote
DB_PASSWORD=Xy9$Qm#2Lp!8Kw@5Rt
DB_NAME=Insight
DB_ENCRYPT=true
DB_TRUST_SERVER_CERTIFICATE=true
```

---

## ⚠️ القيود

- الاتصال قد ينقطع في أي وقت
- البورت يتغير كل مرة
- غير مناسب للاستخدام الطويل
- **فقط للتجربة!**

---

## للإنتاج

استخدم **Azure SQL** - مجاني لـ 32GB + $200 رصيد عند التسجيل (يطلب بطاقة للتحقق فقط)

---

**ابدأ الآن!** 🚀
