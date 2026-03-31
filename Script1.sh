#!/bin/bash
# Script 1: System Identity Report


STUDENT_NAME="Anuj"
SOFTWARE_CHOICE="Your Software"

KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
DATE=$(date)
DISTRO=$(cat /etc/os-release | grep PRETTY_NAME | cut -d= -f2 | tr -d '"')

echo "================================"
echo " Open Source Audit — $STUDENT_NAME"
echo "================================"
echo "Software Choice : $SOFTWARE_CHOICE"
echo "Distribution    : $DISTRO"
echo "Kernel Version  : $KERNEL"
echo "User            : $USER_NAME"
echo "Home Directory  : $HOME"
echo "Uptime          : $UPTIME"
echo "Date & Time     : $DATE"
echo "License         : GNU General Public License (GPL)"
echo "================================"
