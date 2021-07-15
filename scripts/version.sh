LOG=$(git log $(git describe --tags --abbrev=0 @^)..@ --pretty=format:"%h %s" --no-merges | sed -e 's/^/* /')
PACKAGE_VERSION=$(node -p -e "require('./package.json').version")
DATE=$(date +%F)
echo "\n-------------------\n **v$PACKAGE_VERSION**  ($DATE) \n\n$LOG" >> CHANGELOG.md &&
git add .
