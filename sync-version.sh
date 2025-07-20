#!/bin/bash

npx standard-version

# گرفتن نسخه از package.json
VERSION=$(node -p "require('./package.json').version")

echo "Syncing pom.xml to version: $VERSION"

sed -i.bak -E "/<artifactId>LearnCI_CD<\/artifactId>/,/<version>.*<\/version>/ s|<version>.*</version>|<version>${VERSION}</version>|" pom.xml

rm -f pom.xml.bak
