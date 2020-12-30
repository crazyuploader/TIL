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
    RECENT_FILES="$(git log -n 20 | grep commit | cut -d " " -f 2 | xargs git show --pretty="" --name-only | grep ".md" | grep -v "README.md" | grep -v "misc" | sort -u)"
    STRING=""
    NUM=0
    for FILE in $RECENT_FILES; do
        if [[ "${NUM}" -eq "5" ]]; then
            break
        fi
        HEADING="$(head -n 1 < "${FILE}" | sed 's/# //')"
        STRING=$(echo -e "${STRING}\n- [${HEADING}](${FILE})")
        ((NUM = NUM + 1))
    done
    echo "${STRING}"
    # sed -e '/<!--START-->/,/<!--END-->/c\<!--START-->\n'"$STRING"'\n<!--END-->' README.md
}

count
recent
echo -e "${YELLOW}Update README.md OK${NC}"
echo ""
echo -e "${GREEN}Number of TIL Markdown File(s):${NC} ${FILES}"
