#!/bin/bash
# Script 4: Log File Analyzer
# Usage: ./script4.sh /var/log/bootstrap.log

LOGFILE=$1
KEYWORD=${2:-"extracted"} 
COUNT=0

# Check if file exists [cite: 174]
if [ ! -f "$LOGFILE" ]; then
    echo "Error: File $LOGFILE not found."
    exit 1
fi

# Read file line by line [cite: 178]
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo "------------------------------------------"
echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"
echo "------------------------------------------"
echo "Last 5 matching lines:"
grep -i "$KEYWORD" "$LOGFILE" | tail -n 5
