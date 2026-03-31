#!/bin/bash
# Script 4: Log File Analyzer

LOGFILE=$1
KEYWORD=${2:-"error"}
COUNT=0

if [ -z "$LOGFILE" ]; then
  echo "Usage: $0 <logfile> [keyword]"
  exit 1
fi

if [ ! -f "$LOGFILE" ]; then
  echo "Error: File not found."
  exit 1
fi

if [ ! -s "$LOGFILE" ]; then
  echo "File is empty. Retrying in 2 seconds..."
  sleep 2
  if [ ! -s "$LOGFILE" ]; then
    echo "Still empty. Exiting."
    exit 1
  fi
fi

while IFS= read -r LINE; do
  if echo "$LINE" | grep -iq "$KEYWORD"; then
    COUNT=$((COUNT + 1))
  fi
done < "$LOGFILE"

echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"

echo "Last 5 matching lines:"
grep -i "$KEYWORD" "$LOGFILE" | tail -n 5
