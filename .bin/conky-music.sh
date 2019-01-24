#!/bin/bash
output=`wmctrl -l | grep "Google Play Music" | sed 's/.*ironrath //' |sed 's/.*icemark //' | sed 's/ - Google Play Music//' | sed 's/["!@#\$%^&*()]//g' | head -n 1`
if [ -z "$output" ]; then
  echo "n/a"
  exit
fi

echo "$output"
