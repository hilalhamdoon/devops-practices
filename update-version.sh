#!/bin/bash

DATE=$(git log -1 --format=%cd --date=format:'%y%m%d')
HASH=$(git rev-parse --short=8 HEAD)
VERSION="$DATE-$HASH"

mvn versions:set -DnewVersion=$VERSION
echo "Version set to $VERSION"
