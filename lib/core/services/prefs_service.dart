import 'package:shared_preferences/shared_preferences.dart';

class PrefsService {
  static late SharedPreferences _prefs;

  static Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  static Future<void> setBool({
    required String key,
    required bool value,
  }) async {
    await _prefs.setBool(key, value);
  }

  static bool? getBool({required String key}) {
    return _prefs.getBool(key);
  }
}
