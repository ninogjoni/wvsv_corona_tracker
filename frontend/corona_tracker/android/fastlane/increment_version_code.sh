#!/bin/sh

currentBuildNumber=$(cat local.properties | grep "flutter.versionCode" | cut -d "=" -f 2)
newBuildNumber=$(expr $currentBuildNumber + 1)
awk '!/versionCode/' local.properties > temp && mv temp local.properties
echo "flutter.versionCode=$newBuildNumber" >>local.properties
