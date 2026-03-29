#!/bin/bash
# Script 1: System Identity Report
# Author: Anshika Pathak
# Software Choice: Python

# --- Variables for System Info
STUDENT_NAME="Anshika Pathak"
SOFTWARE="Python"
KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
DISTRO=$(cat /etc/os-release | grep PRETTY_NAME | cut -d'"' -f2)
CURRENT_DATE=$(date)

# --- Display Output
echo "=========================================="
echo "      $SOFTWARE Open Source Audit"
echo "=========================================="
echo "Student Name : $STUDENT_NAME"
echo "Kernel Ver   : $KERNEL"
echo "Current User : $USER_NAME"
echo "System Uptime: $UPTIME"
echo "Distribution : $DISTRO"
echo "Current Date : $CURRENT_DATE"
echo "------------------------------------------"
echo "License Note: This OS is covered by the GNU GPL."
echo "=========================================="
