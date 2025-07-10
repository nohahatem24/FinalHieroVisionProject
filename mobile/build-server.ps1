# Quick build script for your working server
# This builds the APK with the correct server URL

Write-Host "Building APK for server: http://130.162.171.106:5000"
Write-Host "========================================================"

# Clean previous builds
Write-Host "Cleaning previous builds..."
flutter clean
flutter pub get

# Build APK with correct server URL
Write-Host "Building APK..."
flutter build apk --dart-define=API_BASE_URL=http://130.162.171.106:5000

Write-Host ""
Write-Host "Build completed!"
Write-Host "APK location: build\app\outputs\flutter-apk\app-release.apk"
Write-Host ""
Write-Host "To install on device:"
Write-Host "  flutter install"
Write-Host "or"
Write-Host "  adb install build\app\outputs\flutter-apk\app-release.apk"
