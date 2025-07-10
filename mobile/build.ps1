# Build script for different environments
# Usage: .\build.ps1 [environment] [platform]
# Environment: dev, staging, prod
# Platform: android, ios, both

param(
    [string]$Environment = "dev",
    [string]$Platform = "android"
)

# API URL configurations
switch ($Environment) {
    "dev" { $ApiUrl = "http://130.162.171.106:5000" }         # Your working server URL
    "staging" { $ApiUrl = "https://staging.hierovision.com" }  # Replace with actual staging URL
    "prod" { $ApiUrl = "https://api.hierovision.com" }        # Replace with actual production URL
    default {
        Write-Host "Unknown environment: $Environment"
        Write-Host "Use: dev, staging, or prod"
        exit 1
    }
}

Write-Host "Building for $Environment environment"
Write-Host "API URL: $ApiUrl"
Write-Host "Platform: $Platform"

# Build command with environment variables
switch ($Platform) {
    "android" {
        $BuildCmd = "flutter build apk --dart-define=API_BASE_URL=$ApiUrl"
    }
    "ios" {
        $BuildCmd = "flutter build ios --dart-define=API_BASE_URL=$ApiUrl"
    }
    "both" {
        Write-Host "Building for Android..."
        Invoke-Expression "flutter build apk --dart-define=API_BASE_URL=$ApiUrl"
        Write-Host "Building for iOS..."
        Invoke-Expression "flutter build ios --dart-define=API_BASE_URL=$ApiUrl"
        exit 0
    }
    default {
        Write-Host "Unknown platform: $Platform"
        Write-Host "Use: android, ios, or both"
        exit 1
    }
}

Write-Host "Running: $BuildCmd"
Invoke-Expression $BuildCmd
