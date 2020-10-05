#!/usr/bin/env bash

# Auto Update Push Script

# Color
GREEN="\033[1;32m"
YELLOW="\033[1;33m"
NC="\033[0m"

BRANCH="$(git rev-parse --abbrev-ref HEAD)"

./count.sh
echo ""
echo -e "${YELLOW}Run Prettier...${NC}"
npx prettier --write .
git config user.email "49350241+crazyuploader@users.noreply.github.com"
git config user.name "crazyuploader"

echo ""
if [[ -z $(git status --porcelain) ]]; then
    echo -e "${GREEN} Nothing to commit.${NC}"
else
    git add .
    git commit -m "Auto Update [skip ci]" -m "" -m "Update TIL number, and run Prettier"
    git push https://crazyuploader:"${GITHUB_TOKEN}"@"${GH_REF}" HEAD:${TRAVIS_BRANCH}
    echo -e "${YELLOW}Updates Pushed to https://${GH_REF}"
fi
