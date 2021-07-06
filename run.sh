#!/usr/bin/env bash

# Created by Jugal Kishore -- 2020
# Automatically update Recent TILs & TIL Number in README.md file

# Color
GREEN="\033[1;32m"
YELLOW="\033[1;33m"
NC="\033[0m"

function count() {
    sed -i '7d' README.md
    FILES="$(find . -name "*.md" | grep -cv "README.md")"
    TEXT="***${FILES} TILs so far.***"
    sed -i "7i ${TEXT}" README.md
}

function recent() {
    sed -i '13,17d' README.md
    RECENT_FILES="$(git log --author="me@devjugal.com" | grep commit | cut -d " " -f 2 | xargs git show --pretty="" --name-only | grep ".md" | grep -v "README.md" | grep -v "misc" | uniq | head -n 5)"
    STRING=""
    NUM=0
    LINE=13
    for FILE in $RECENT_FILES; do
        if [[ "${NUM}" -eq "5" ]]; then
            break
        fi
        HEADING="$(head -n 1 < "${FILE}" | sed 's/# //')"
        STRING="- [${HEADING}](${FILE})"
        sed -i "${LINE}i ${STRING}" README.md
        ((NUM = NUM + 1))
        ((LINE = LINE + 1))
    done
}

count
recent
echo -e "${YELLOW}Update README.md OK${NC}"
echo ""
echo -e "${GREEN}Number of TIL Markdown File(s):${NC} ${FILES}"
