#!/bin/bash
echo "🔄 Upgrade vers API 35..."
sed -i 's/compileSdk 34/compileSdk 35/g' app/build.gradle
sed -i 's/targetSdk 34/targetSdk 35/g' app/build.gradle
sed -i 's/versionCode 2/versionCode 3/g' app/build.gradle
sed -i 's/versionName "2.0"/versionName "3.0"/g' app/build.gradle
git add .
git commit -m "Upgrade: API 35 - Version 3.0"
git push origin main
echo "✅ Upgrade envoyé !"
