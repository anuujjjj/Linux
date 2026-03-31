#!/bin/bash
# Script 5: Open Source Manifesto Generator

echo "Answer three questions to generate your manifesto."
echo ""

read -p "1. Open-source tool you use daily: " TOOL
read -p "2. One word for freedom: " FREEDOM
read -p "3. Something you would build and share: " BUILD

DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

echo "On $DATE, I reflect on the power of open source. Using $TOOL every day reminds me that software is not just code, but a shared vision of $FREEDOM. I aspire to build $BUILD and contribute it freely so others can learn, adapt, and innovate. Open source is not just development; it is a philosophy of collaboration and progress." > "$OUTPUT"

echo "Manifesto saved to $OUTPUT"
cat "$OUTPUT"
