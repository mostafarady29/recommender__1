# ========================================
# Setup ngrok for SQL Server Tunneling
# ========================================

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "  ngrok Setup for SQL Server" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

# Step 1: Check if ngrok is already installed
Write-Host "[1/6] Checking if ngrok is installed..." -ForegroundColor Yellow

$ngrokPath = "C:\ngrok\ngrok.exe"
$ngrokInstalled = Test-Path $ngrokPath

if ($ngrokInstalled) {
    Write-Host "[SUCCESS] ngrok is already installed at: $ngrokPath" -ForegroundColor Green
}
else {
    Write-Host "[INFO] ngrok not found. Downloading..." -ForegroundColor Yellow
    
    # Create ngrok directory
    $ngrokDir = "C:\ngrok"
    if (!(Test-Path $ngrokDir)) {
        New-Item -ItemType Directory -Path $ngrokDir -Force | Out-Null
    }
    
    # Download ngrok
    $ngrokZip = "$env:TEMP\ngrok.zip"
    $ngrokUrl = "https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-windows-amd64.zip"
    
    try {
        Write-Host "  Downloading from: $ngrokUrl" -ForegroundColor Cyan
        Invoke-WebRequest -Uri $ngrokUrl -OutFile $ngrokZip -UseBasicParsing
        
        Write-Host "  Extracting to: $ngrokDir" -ForegroundColor Cyan
        Expand-Archive -Path $ngrokZip -DestinationPath $ngrokDir -Force
        
        Remove-Item $ngrokZip -Force
        
        Write-Host "[SUCCESS] ngrok downloaded and installed" -ForegroundColor Green
    }
    catch {
        Write-Host "[ERROR] Failed to download ngrok: $_" -ForegroundColor Red
        Write-Host "Please download manually from: https://ngrok.com/download" -ForegroundColor Yellow
        exit 1
    }
}

# Step 2: Get ngrok authtoken
Write-Host ""
Write-Host "[2/6] ngrok Authentication" -ForegroundColor Yellow
Write-Host ""
Write-Host "To continue, you need an ngrok authtoken:" -ForegroundColor White
Write-Host "  1. Go to: https://dashboard.ngrok.com/signup" -ForegroundColor Cyan
Write-Host "  2. Sign up (free)" -ForegroundColor Cyan
Write-Host "  3. Copy your authtoken from: https://dashboard.ngrok.com/get-started/your-authtoken" -ForegroundColor Cyan
Write-Host ""

$authtoken = Read-Host "Enter your ngrok authtoken (or press Enter to skip)"

if ($authtoken) {
    Write-Host ""
    Write-Host "[3/6] Configuring ngrok..." -ForegroundColor Yellow
    
    try {
        $configResult = & $ngrokPath config add-authtoken $authtoken 2>&1
        
        if ($LASTEXITCODE -eq 0) {
            Write-Host "[SUCCESS] ngrok configured successfully" -ForegroundColor Green
        }
        else {
            Write-Host "[WARNING] Failed to configure ngrok. You can do it manually later." -ForegroundColor Yellow
        }
    }
    catch {
        Write-Host "[WARNING] Error configuring ngrok: $_" -ForegroundColor Yellow
    }
}
else {
    Write-Host ""
    Write-Host "[SKIPPED] You can configure ngrok later using:" -ForegroundColor Yellow
    Write-Host "  ngrok config add-authtoken YOUR_TOKEN" -ForegroundColor Cyan
}

# Step 3: Check SQL Server TCP/IP
Write-Host ""
Write-Host "[4/6] Checking SQL Server TCP/IP..." -ForegroundColor Yellow

$tcpPort = Get-NetTCPConnection -LocalPort 1433 -ErrorAction SilentlyContinue

if ($tcpPort) {
    Write-Host "[SUCCESS] SQL Server is listening on port 1433" -ForegroundColor Green
}
else {
    Write-Host "[WARNING] SQL Server is NOT listening on port 1433" -ForegroundColor Yellow
    Write-Host ""
    Write-Host "You need to enable TCP/IP:" -ForegroundColor White
    Write-Host "  1. Open SQL Server Configuration Manager" -ForegroundColor Cyan
    Write-Host "  2. Go to: SQL Server Network Configuration -> Protocols for SQLEXPRESS" -ForegroundColor Cyan
    Write-Host "  3. Enable TCP/IP" -ForegroundColor Cyan
    Write-Host "  4. Set port to 1433 in IP Addresses tab" -ForegroundColor Cyan
    Write-Host "  5. Restart SQL Server service: net stop MSSQL`$SQLEXPRESS && net start MSSQL`$SQLEXPRESS" -ForegroundColor Cyan
    Write-Host ""
}

# Step 4: Test local SQL Server connection
Write-Host ""
Write-Host "[5/6] Testing SQL Server connection..." -ForegroundColor Yellow

$testConnection = sqlcmd -S "localhost\SQLEXPRESS" -U insight_remote -P "Xy9`$Qm#2Lp!8Kw@5Rt" -Q "SELECT 'Connection OK' AS Status" 2>&1

if ($LASTEXITCODE -eq 0) {
    Write-Host "[SUCCESS] SQL Server connection successful" -ForegroundColor Green
}
else {
    Write-Host "[WARNING] Failed to connect to SQL Server" -ForegroundColor Yellow
    Write-Host "  Make sure SQL Server Authentication is enabled" -ForegroundColor Cyan
}

# Step 5: Create startup script
Write-Host ""
Write-Host "[6/6] Creating startup script..." -ForegroundColor Yellow

$startScript = @"
@echo off
title ngrok SQL Server Tunnel
echo ========================================
echo   Starting ngrok tunnel for SQL Server
echo ========================================
echo.
echo IMPORTANT: Keep this window open!
echo.
echo Press Ctrl+C to stop the tunnel
echo ========================================
echo.

cd C:\ngrok
ngrok tcp 1433

pause
"@

$scriptPath = "C:\ngrok\start-sql-tunnel.bat"
Set-Content -Path $scriptPath -Value $startScript -Force

Write-Host "[SUCCESS] Startup script created at: $scriptPath" -ForegroundColor Green

# Summary
Write-Host ""
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "  Setup Complete!" -ForegroundColor Green
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "Next Steps:" -ForegroundColor Yellow
Write-Host ""
Write-Host "1. Make sure SQL Server TCP/IP is enabled (see warning above if not)" -ForegroundColor White
Write-Host ""
Write-Host "2. Start ngrok tunnel:" -ForegroundColor White
Write-Host "   Option A: Run the batch file:" -ForegroundColor Cyan
Write-Host "      C:\ngrok\start-sql-tunnel.bat" -ForegroundColor Gray
Write-Host ""
Write-Host "   Option B: Run manually:" -ForegroundColor Cyan
Write-Host "      cd C:\ngrok" -ForegroundColor Gray
Write-Host "      .\ngrok tcp 1433" -ForegroundColor Gray
Write-Host ""
Write-Host "3. Copy the ngrok URL (will look like: tcp://0.tcp.ngrok.io:12345)" -ForegroundColor White
Write-Host ""
Write-Host "4. Update your Backend .env file with:" -ForegroundColor White
Write-Host "      DB_HOST=0.tcp.ngrok.io" -ForegroundColor Gray
Write-Host "      DB_PORT=12345  (use the actual port from ngrok)" -ForegroundColor Gray
Write-Host "      DB_USER=insight_remote" -ForegroundColor Gray
Write-Host "      DB_PASSWORD=Xy`$Qm#2Lp!8Kw@5Rt" -ForegroundColor Gray
Write-Host ""
Write-Host "SECURITY REMINDER:" -ForegroundColor Red
Write-Host "  - This is for DEVELOPMENT ONLY" -ForegroundColor Yellow
Write-Host "  - Do NOT use in production" -ForegroundColor Yellow
Write-Host "  - Stop ngrok when not in use" -ForegroundColor Yellow
Write-Host ""
Write-Host "For detailed instructions, see:" -ForegroundColor Cyan
Write-Host "  d:\downloads\Insight-main\Database\Deployment\expose-sqlserver-guide.md" -ForegroundColor Gray
Write-Host ""
