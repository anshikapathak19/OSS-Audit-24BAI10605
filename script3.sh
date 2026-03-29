#!/bin/bash
# Script 3: Disk and Permission Auditor

# List of important directories to audit
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "--- Directory Audit Report ---"

for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        # Get permissions, owner, and group using awk
        PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
        # Get size of the directory
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        
        echo "Path: $DIR | Perms: $PERMS | Size: $SIZE"
    else
        echo "Warning: $DIR does not exist."
    fi
done

# Check Python's specific library directory permissions
echo "------------------------------"
PY_DIR="/usr/lib/python3"
if [ -d "$PY_DIR" ]; then
    echo "Python Library Directory Found:"
    ls -ld "$PY_DIR"
fi
