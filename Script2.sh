#!/bin/bash
# Script 2: FOSS Package Inspector

PACKAGE=$1

if [ -z "$PACKAGE" ]; then
  echo "Usage: $0 <package-name>"
  exit 1
fi

if command -v dpkg &>/dev/null; then
  if dpkg -l | grep -qw "$PACKAGE"; then
    echo "$PACKAGE is installed."
    dpkg -s "$PACKAGE" | grep -E 'Version|Maintainer|Description'
  else
    echo "$PACKAGE is NOT installed."
  fi
elif command -v rpm &>/dev/null; then
  if rpm -q "$PACKAGE" &>/dev/null; then
    echo "$PACKAGE is installed."
    rpm -qi "$PACKAGE" | grep -E 'Version|License|Summary'
  else
    echo "$PACKAGE is NOT installed."
  fi
fi

case $PACKAGE in
  apache2|httpd) echo "Apache: foundation of the open web" ;;
  mysql) echo "MySQL: open database powering applications" ;;
  git) echo "Git: distributed version control revolution" ;;
  python3) echo "Python: community-driven programming language" ;;
  vlc) echo "VLC: media player that plays everything" ;;
  firefox) echo "Firefox: browser advocating open internet" ;;
  *) echo "Open-source software enabling freedom and collaboration" ;;
esac
