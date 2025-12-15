-- ====================================================
-- SQL Server Remote Access Setup Script
-- WARNING: For testing/development only!
-- ====================================================

USE master;
GO

-- Step 1: Create login with strong password
PRINT 'Creating remote login...';
GO

-- Check if login exists
IF EXISTS (SELECT 1 FROM sys.server_principals WHERE name = 'insight_remote')
BEGIN
    PRINT 'Login "insight_remote" already exists. Dropping...';
    DROP LOGIN insight_remote;
END
GO

-- Create login with strong password
CREATE LOGIN insight_remote 
WITH PASSWORD = 'Xy9$Qm#2Lp!8Kw@5Rt',
     CHECK_POLICY = ON,
     CHECK_EXPIRATION = OFF;
GO

PRINT 'Login created successfully.';
GO

-- Step 2: Create database user and grant permissions
USE Insight;
GO

PRINT 'Creating database user...';
GO

-- Check if user exists
IF EXISTS (SELECT 1 FROM sys.database_principals WHERE name = 'insight_remote')
BEGIN
    PRINT 'User "insight_remote" already exists. Dropping...';
    DROP USER insight_remote;
END
GO

-- Create user
CREATE USER insight_remote FOR LOGIN insight_remote;
GO

-- Grant read/write permissions (NOT admin)
ALTER ROLE db_datareader ADD MEMBER insight_remote;
ALTER ROLE db_datawriter ADD MEMBER insight_remote;
GO

PRINT 'User created and permissions granted.';
GO

-- Step 3: Verify setup
PRINT '';
PRINT '====================================================';
PRINT 'Setup Complete!';
PRINT '====================================================';
PRINT '';
PRINT 'Login Information:';
PRINT '  Username: insight_remote';
PRINT '  Password: Xy9$Qm#2Lp!8Kw@5Rt';
PRINT '';
PRINT 'Permissions granted:';
PRINT '  - db_datareader (SELECT)';
PRINT '  - db_datawriter (INSERT, UPDATE, DELETE)';
PRINT '';
PRINT 'Next steps:';
PRINT '  1. Enable TCP/IP in SQL Server Configuration Manager';
PRINT '  2. Restart SQL Server service';
PRINT '  3. Setup ngrok tunnel';
PRINT '';
PRINT 'SECURITY WARNING:';
PRINT '  - Do NOT use in production!';
PRINT '  - Change password regularly';
PRINT '  - Monitor connections frequently';
PRINT '';
GO

-- Display login details
SELECT 
    name AS LoginName,
    type_desc AS LoginType,
    is_disabled AS IsDisabled,
    create_date AS CreateDate
FROM sys.server_principals 
WHERE name = 'insight_remote';
GO

-- Display user permissions
USE Insight;
GO

SELECT 
    dp.name AS Username,
    dp.type_desc AS UserType,
    r.name AS RoleName
FROM sys.database_principals dp
LEFT JOIN sys.database_role_members drm ON dp.principal_id = drm.member_principal_id
LEFT JOIN sys.database_principals r ON drm.role_principal_id = r.principal_id
WHERE dp.name = 'insight_remote';
GO
