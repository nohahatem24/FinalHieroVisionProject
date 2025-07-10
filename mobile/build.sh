#!/bin/bash

# Build script for different environments
# Usage: ./build.sh [environment] [platform]
# Environment: dev, staging, prod
# Platform: android, ios, both

ENVIRONMENT=${1:-dev}
PLATFORM=${2:-android}

# API URL configurations
case $ENVIRONMENT in
  dev)
    API_URL="http://10.0.2.2:5000"
    ;;
  staging)
    API_URL="https://staging.hierovision.com"  # Replace with actual staging URL
    ;;
  prod)
    API_URL="https://api.hierovision.com"      # Replace with actual production URL
    ;;
  *)
    echo "Unknown environment: $ENVIRONMENT"
    echo "Use: dev, staging, or prod"
    exit 1
    ;;
esac

echo "Building for $ENVIRONMENT environment"
echo "API URL: $API_URL"
echo "Platform: $PLATFORM"

# Build command with environment variables
BUILD_CMD="flutter build"

case $PLATFORM in
  android)
    BUILD_CMD="$BUILD_CMD apk --dart-define=API_BASE_URL=$API_URL"
    ;;
  ios)
    BUILD_CMD="$BUILD_CMD ios --dart-define=API_BASE_URL=$API_URL"
    ;;
  both)
    echo "Building for Android..."
    flutter build apk --dart-define=API_BASE_URL=$API_URL
    echo "Building for iOS..."
    flutter build ios --dart-define=API_BASE_URL=$API_URL
    exit 0
    ;;
  *)
    echo "Unknown platform: $PLATFORM"
    echo "Use: android, ios, or both"
    exit 1
    ;;
esac

echo "Running: $BUILD_CMD"
$BUILD_CMD
