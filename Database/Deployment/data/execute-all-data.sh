#!/bin/bash
# ====================================================
# Execute all MySQL data files on Aiven
# ====================================================

# Usage:
# 1. Set environment variables first:
#    export AIVEN_HOST="your-mysql.aivencloud.com"
#    export AIVEN_PORT="13306"
#    export AIVEN_USER="avnadmin"
#    export AIVEN_PASSWORD="your-password"
#    export AIVEN_DB="Insight"
#
# 2. Run this script:
#    bash execute-all-data.sh

echo "======================================================"
echo "Executing MySQL Data Files on Aiven"
echo "======================================================"
echo ""

# Check if environment variables are set
if [ -z "$AIVEN_HOST" ] || [ -z "$AIVEN_PASSWORD" ]; then
    echo "[ERROR] Please set AIVEN_HOST and AIVEN_PASSWORD environment variables"
    exit 1
fi

# Default values
AIVEN_PORT=${AIVEN_PORT:-13306}
AIVEN_USER=${AIVEN_USER:-avnadmin}
AIVEN_DB=${AIVEN_DB:-Insight}

echo "Host: $AIVEN_HOST"
echo "Port: $AIVEN_PORT"
echo "User: $AIVEN_USER"
echo "Database: $AIVEN_DB"
echo ""

# Files to execute in order
FILES=(
    "Fields.sql"
    "Users_Researchers_Admins.sql"
    "Authors_Authors_Paper.sql"
    "Papers_Papers_Keywords.sql"
    "Download_Review_Search.sql"
)

# Execute each file
for file in "${FILES[@]}"; do
    echo "Executing: $file"
    
    mysql -h "$AIVEN_HOST" \
          -P "$AIVEN_PORT" \
          -u "$AIVEN_USER" \
          -p"$AIVEN_PASSWORD" \
          --ssl-mode=REQUIRED \
          "$AIVEN_DB" < "$file"
    
    if [ $? -eq 0 ]; then
        echo "[SUCCESS] $file"
    else
        echo "[FAILED] $file"
        exit 1
    fi
    echo ""
done

echo "======================================================"
echo "[SUCCESS] All data files executed successfully!"
echo "======================================================"
