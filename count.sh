#!/usr/bin/env bash

# Created by Jugal Kishore -- 2020
# Automatically update TIL numbers

# Color
GREEN="\033[1;32m"
YELLOW="\033[1;33m"
NC="\033[0m"

sed -i '5d' README.md
FILES=-1
for f in `find . -name "*.md"`; do 
    ((FILES = FILES + 1)) 
done
TEXT="***${FILES} TILs so far.***"
sed -i "5i ${TEXT}" README.md 
echo -e "${YELLOW}Update README.md OK${NC}"
echo ""
echo -e "${GREEN}Number of Markdown File(s):${NC} ${FILES}"
