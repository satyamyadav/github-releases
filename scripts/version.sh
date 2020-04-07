LOG=$(git log $(git describe --tags --abbrev=0 @^)..@ --pretty=format:"%h %s" --no-merges | sed -e 's/^/* /')
PACKAGE_VERSION=$(node -p -e "require('./package.json').version")
DATE=$(date +%F)
echo "v$PACKAGE_VERSION  ($DATE) \n$LOG \n-------------------\n\n" >> CHANGELOG.md &&
git add CHANGELOG.md
