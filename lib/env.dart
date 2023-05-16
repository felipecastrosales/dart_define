class Env {
  // final apiKey = const String.fromEnvironment('API_KEY');
  static String get apiEndpoint => _getKey('API_ENDPOINT');
  static String get apiKey => _getKey('API_KEY');

  static const Map<String, String> _keys = {
    // 'API_ENDPOINT': String.fromEnvironment('API_ENDPOINT'),
    'API_ENDPOINT': String.fromEnvironment('API_ENDPOINT'),
    'API_KEY': String.fromEnvironment('API_KEY'),
  };

  static String _getKey(String key) {
    final value = _keys[key] ?? '';

    if (value.isEmpty) {
      throw Exception('Missing environment variable: $key');
    }

    return value;
  }
}
