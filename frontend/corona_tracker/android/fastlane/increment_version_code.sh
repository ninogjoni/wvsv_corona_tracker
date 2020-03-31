#!/bin/sh

cd ..
currentBuildNumber=$(cat local.properties | grep "flutter.versionCode" | cut -d "=" -f 2)
newBuildNumber=$(expr $currentBuildNumber + 1)
awk '!/versionCode/' local.properties > temp && mv temp local.properties
echo "flutter.versionCode=$newBuildNumber" >>local.properties
cd ..
build appbundle --target-platform android-arm,android-arm64,android-x64
