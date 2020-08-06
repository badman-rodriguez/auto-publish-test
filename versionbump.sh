echo "Bumping application version"

npm version patch --no-git-tag-version;

VERSION=$(node -p "require('./package.json').version")

echo "Tagging and committing v${VERSION}"

git add package.json
git add package-lock.json
git commit -m "Release v${VERSION}"
git tag "v${VERSION}"

echo "Pushing new version"

git push origin "v${VERSION}"