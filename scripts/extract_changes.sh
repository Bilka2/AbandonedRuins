#!/usr/bin/bash
# ignore first 3 lines and match until line starts with ---- and remove said line, remove two spaces at start of lines
sed -n -e '4,/^----/p' changelog.txt | sed -e '/^----/d' | sed 's/^\s\s//g' >> changes.txt 
