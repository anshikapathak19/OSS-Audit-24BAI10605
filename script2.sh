#!/bin/bash
# Script 2: FOSS Package Inspector

PACKAGE="python3"

# Check if the package is installed using dpkg (Ubuntu/Debian)
if dpkg -s $PACKAGE &>/dev/null; then
    echo "$PACKAGE is installed on this system."
    # Extract version and summary info
    dpkg -s $PACKAGE | grep -E 'Version|Description'
else
    echo "Error: $PACKAGE is NOT installed."
    exit 1
fi

# Case statement for philosophy notes
case $PACKAGE in
    python3)
        echo "Philosophy: Python emphasizes readability and 'one obvious way' to do things."
        ;;
    httpd|apache2)
        echo "Apache: The web server that built the open internet."
        ;;
    *)
        echo "Generic Open Source Software: Built by the community."
        ;;
esac
