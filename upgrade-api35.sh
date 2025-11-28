#!/bin/bash
echo "🚀 Upgrade vers API 35..."

# Mettre à jour build.gradle
sed -i 's/compileSdk 34/compileSdk 35/g' app/build.gradle
sed -i 's/targetSdk 34/targetSdk 35/g' app/build.gradle
sed -i 's/versionCode 1/versionCode 2/g' app/build.gradle
sed -i 's/versionName "1.0"/versionName "2.0"/g' app/build.gradle

# Pousser les changements
git add .
git commit -m "Upgrade to API 35 - Version 2.0"
git push origin main

echo "✅ Upgrade envoyé !"
echo "📱 Build: https://github.com/ihebtmasek-bit/android-calculator-pro/actions"
