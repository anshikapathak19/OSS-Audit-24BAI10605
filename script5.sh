#!/bin/bash
# Script 5: Open Source Manifesto Generator

echo "--- Generate Your Personalized Open Source Manifesto ---"
echo

# Interactive user input
read -p "1. Which open-source tool do you use daily? " TOOL
read -p "2. What does 'freedom' mean to you in one word? " FREEDOM
read -p "3. What software would you like to build and share? " BUILD

DATE_STR=$(date +'%d %B %Y')
FILE_NAME="manifesto_$(whoami).txt"

# Create the manifesto file using redirection
echo "THE OPEN SOURCE MANIFESTO" > "$FILE_NAME"
echo "Created by: $(whoami) on $DATE_STR" >> "$FILE_NAME"
echo "----------------------------------------" >> "$FILE_NAME"
echo "In a world of proprietary walls, I choose transparency." >> "$FILE_NAME"
echo "I rely on $TOOL because it empowers my creativity." >> "$FILE_NAME"
echo "To me, software freedom is defined by $FREEDOM." >> "$FILE_NAME"
echo "I commit to building $BUILD to help others grow." >> "$FILE_NAME"

echo
echo "Manifesto successfully saved to $FILE_NAME"
echo "----------------------------------------"
cat "$FILE_NAME"
