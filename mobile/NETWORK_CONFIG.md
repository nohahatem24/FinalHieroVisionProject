# Network Configuration Guide

## Problem
The app was hardcoded to use IP address `130.162.171.106:5000` which is no longer accessible, causing network connection failures with the error:
```
Network error: ClientException with SocketException: Connection failed (OS Error: Operation not permitted, errno = 1)
```

## Solution
The app now uses environment variables for API configuration, making it flexible for different environments.

## Configuration Options

### 1. Default Configuration (Development)
- **Android Emulator**: `http://10.0.2.2:5000`
- **iOS Simulator**: `http://127.0.0.1:5000`
- **Physical Device**: Use your computer's IP address

### 2. Environment Variables
You can override the default API URL using:
```bash
--dart-define=API_BASE_URL=http://your-server-ip:5000
```

### 3. Build Scripts
Use the provided build scripts for different environments:

#### Windows (PowerShell)
```powershell
# Development build
.\build.ps1 dev android

# Production build
.\build.ps1 prod android

# Staging build
.\build.ps1 staging android
```

#### Linux/Mac (Bash)
```bash
# Development build
./build.sh dev android

# Production build
./build.sh prod android

# Staging build
./build.sh staging android
```

## Setting Up Your Backend

### 1. For Development (Local Server)
Make sure your Flask backend is running:
```bash
cd hierovision
python run.py
```

### 2. For Android Emulator
- Use `http://10.0.2.2:5000` (maps to localhost on host machine)
- Make sure your Flask server is running on `0.0.0.0:5000`

### 3. For Physical Device
- Find your computer's IP address
- Use `http://YOUR_IP:5000`
- Make sure your Flask server is accessible from the network

### 4. Network Troubleshooting
- Check if the backend server is running
- Verify the IP address is correct
- Ensure no firewall is blocking the connection
- For physical devices, ensure both devices are on the same network

## Building for Different Environments

### Development Build
```bash
flutter build apk --dart-define=API_BASE_URL=http://10.0.2.2:5000
```

### Production Build
```bash
flutter build apk --dart-define=API_BASE_URL=https://your-production-url.com
```

### Custom IP Build
```bash
flutter build apk --dart-define=API_BASE_URL=http://192.168.1.100:5000
```

## Files Modified
- `lib/app/config/app_config.dart` - New configuration file
- `lib/app/data/providers/api_provider.dart` - Updated to use config
- `lib/app/data/models/scan.dart` - Updated to use config
- `lib/app/modules/result/controllers/result_controller.dart` - Updated to use config
- `build.ps1` - Windows build script
- `build.sh` - Linux/Mac build script

## Common Issues

### 1. Connection Refused
- Backend server is not running
- Wrong IP address or port

### 2. Operation Not Permitted
- IP address is not accessible
- Firewall blocking the connection

### 3. Timeout
- Server is too slow to respond
- Network connectivity issues

## Quick Fix for Current Issue
1. Make sure your Flask backend is running
2. Build the app with the correct API URL:
   ```bash
   flutter build apk --dart-define=API_BASE_URL=http://10.0.2.2:5000
   ```
3. If using a physical device, replace `10.0.2.2` with your computer's IP address
