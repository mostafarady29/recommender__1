# ========================================
# Setup Local MySQL Database for Insight
# ========================================

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "  Insight Database Setup Script" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

# Check if MySQL is installed
Write-Host "[1/7] Checking MySQL installation..." -ForegroundColor Yellow
$mysqlService = Get-Service MySQL* -ErrorAction SilentlyContinue

if (!$mysqlService) {
    Write-Host "[ERROR] MySQL is not installed!" -ForegroundColor Red
    Write-Host "Please install MySQL using one of these methods:" -ForegroundColor Yellow
    Write-Host "  1. choco install mysql -y" -ForegroundColor White
    Write-Host "  2. Download from: https://dev.mysql.com/downloads/mysql/" -ForegroundColor White
    exit 1
}

Write-Host "[SUCCESS] MySQL is installed: $($mysqlService.DisplayName)" -ForegroundColor Green

# Check if MySQL is running
Write-Host ""
Write-Host "[2/7] Checking MySQL service status..." -ForegroundColor Yellow

if ($mysqlService.Status -ne 'Running') {
    Write-Host "[WARNING] MySQL service is not running. Starting it..." -ForegroundColor Yellow
    Start-Service $mysqlService.Name
    Start-Sleep -Seconds 3
    $mysqlService = Get-Service $mysqlService.Name
}

if ($mysqlService.Status -eq 'Running') {
    Write-Host "[SUCCESS] MySQL service is running" -ForegroundColor Green
} else {
    Write-Host "[ERROR] Failed to start MySQL service" -ForegroundColor Red
    exit 1
}

# Get MySQL root password
Write-Host ""
Write-Host "[3/7] MySQL Root Authentication" -ForegroundColor Yellow
$rootPassword = Read-Host "Enter MySQL root password" -AsSecureString
$rootPasswordPlain = [Runtime.InteropServices.Marshal]::PtrToStringAuto(
    [Runtime.InteropServices.Marshal]::SecureStringToBSTR($rootPassword)
)

# Test MySQL connection
Write-Host ""
Write-Host "[4/7] Testing MySQL connection..." -ForegroundColor Yellow
$testConnection = & mysql -u root -p"$rootPasswordPlain" -e "SELECT 1;" 2>&1

if ($LASTEXITCODE -ne 0) {
    Write-Host "[ERROR] Failed to connect to MySQL. Check your password." -ForegroundColor Red
    exit 1
}

Write-Host "[SUCCESS] Connected to MySQL successfully" -ForegroundColor Green

# Create database and user
Write-Host ""
Write-Host "[5/7] Creating database and user..." -ForegroundColor Yellow

$createDbScript = @"
CREATE DATABASE IF NOT EXISTS Insight CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
CREATE USER IF NOT EXISTS 'insight_user'@'localhost' IDENTIFIED BY 'Insight@2024!';
GRANT ALL PRIVILEGES ON Insight.* TO 'insight_user'@'localhost';
FLUSH PRIVILEGES;
SELECT 'Database and user created successfully' AS Status;
"@

$createDbScript | & mysql -u root -p"$rootPasswordPlain" 2>&1

if ($LASTEXITCODE -eq 0) {
    Write-Host "[SUCCESS] Database 'Insight' and user 'insight_user' created" -ForegroundColor Green
} else {
    Write-Host "[WARNING] Database or user might already exist (this is OK)" -ForegroundColor Yellow
}

# Import schema
Write-Host ""
Write-Host "[6/7] Importing database schema..." -ForegroundColor Yellow

$schemaFile = Join-Path $PSScriptRoot "mysql-schema.sql"

if (Test-Path $schemaFile) {
    & mysql -u root -p"$rootPasswordPlain" Insight < $schemaFile 2>&1
    
    if ($LASTEXITCODE -eq 0) {
        Write-Host "[SUCCESS] Schema imported successfully" -ForegroundColor Green
    } else {
        Write-Host "[ERROR] Failed to import schema" -ForegroundColor Red
        exit 1
    }
} else {
    Write-Host "[ERROR] Schema file not found: $schemaFile" -ForegroundColor Red
    exit 1
}

# Import data files
Write-Host ""
Write-Host "[7/7] Importing data files..." -ForegroundColor Yellow

$dataFiles = @(
    "Fields.sql",
    "Users_Researchers_Admins.sql",
    "Authors_Authors_Paper.sql",
    "Papers_Papers_Keywords.sql",
    "Download_Review_Search.sql"
)

$dataDir = Join-Path $PSScriptRoot "data"

if (!(Test-Path $dataDir)) {
    Write-Host "[ERROR] Data directory not found: $dataDir" -ForegroundColor Red
    exit 1
}

$successCount = 0
$totalFiles = $dataFiles.Count

foreach ($file in $dataFiles) {
    $filePath = Join-Path $dataDir $file
    
    if (Test-Path $filePath) {
        Write-Host "  Importing $file..." -ForegroundColor Cyan
        & mysql -u root -p"$rootPasswordPlain" Insight < $filePath 2>&1
        
        if ($LASTEXITCODE -eq 0) {
            Write-Host "  [OK] $file" -ForegroundColor Green
            $successCount++
        } else {
            Write-Host "  [FAILED] $file" -ForegroundColor Red
        }
    } else {
        Write-Host "  [SKIP] $file (not found)" -ForegroundColor Yellow
    }
}

Write-Host ""
Write-Host "[SUCCESS] Imported $successCount/$totalFiles data files" -ForegroundColor Green

# Verify data
Write-Host ""
Write-Host "Verifying database..." -ForegroundColor Yellow

$verifyScript = @"
USE Insight;
SELECT 
    (SELECT COUNT(*) FROM User) AS Users,
    (SELECT COUNT(*) FROM Researcher) AS Researchers,
    (SELECT COUNT(*) FROM Admin) AS Admins,
    (SELECT COUNT(*) FROM Field) AS Fields,
    (SELECT COUNT(*) FROM Paper) AS Papers,
    (SELECT COUNT(*) FROM Author) AS Authors;
"@

$verifyScript | & mysql -u root -p"$rootPasswordPlain" -t 2>&1

# Summary
Write-Host ""
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "  Setup Complete!" -ForegroundColor Green
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "Database Connection Details:" -ForegroundColor Yellow
Write-Host "  Host:     localhost" -ForegroundColor White
Write-Host "  Port:     3306" -ForegroundColor White
Write-Host "  Database: Insight" -ForegroundColor White
Write-Host "  User:     insight_user" -ForegroundColor White
Write-Host "  Password: Insight@2024!" -ForegroundColor White
Write-Host ""
Write-Host "Next Steps:" -ForegroundColor Yellow
Write-Host "  1. Update Back-End/.env with these credentials" -ForegroundColor White
Write-Host "  2. Update Python/.env with these credentials" -ForegroundColor White
Write-Host "  3. Test connection: node Back-End/test-db.js" -ForegroundColor White
Write-Host ""
Write-Host "For more details, see: local-mysql-setup-guide.md" -ForegroundColor Cyan
Write-Host ""
