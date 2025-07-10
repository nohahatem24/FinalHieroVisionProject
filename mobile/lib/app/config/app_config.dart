class AppConfig {
  static const String _apiBaseUrl = String.fromEnvironment(
    'API_BASE_URL',
    defaultValue: 'http://130.162.171.106:5000',
  );

  static const String _apiEndpoint = String.fromEnvironment(
    'API_ENDPOINT',
    defaultValue: '$_apiBaseUrl/api',
  );

  // API Configuration
  static String get apiBaseUrl => _apiBaseUrl;
  static String get apiEndpoint => _apiEndpoint;

  // Network Configuration
  static const Duration connectionTimeout = Duration(seconds: 30);
  static const Duration receiveTimeout = Duration(seconds: 30);

  // Environment Detection
  static bool get isProduction => const bool.fromEnvironment('dart.vm.product');

  static bool get isDevelopment => !isProduction;

  // Debug Configuration
  static bool get enableApiLogging => isDevelopment;
  static bool get enableNetworkLogging => isDevelopment;

  // Common Server Configurations
  static const String localhost =
      'http://10.0.2.2:5000'; // Android emulator localhost
  static const String localhostIOS =
      'http://127.0.0.1:5000'; // iOS simulator localhost
  static const String serverUrl =
      'http://130.162.171.106:5000'; // Your working server URL
  static const String productionUrl =
      'https://your-production-url.com'; // Replace with actual production URL
}
