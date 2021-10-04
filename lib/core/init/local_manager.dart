import 'package:shared_preferences/shared_preferences.dart';

import 'enums.dart';

class LocalManager {
  static final LocalManager _instance = LocalManager._init();

  SharedPreferences? _preferences;
  static LocalManager get instance => _instance;

  LocalManager._init() {
    SharedPreferences.getInstance().then((value) {
      _preferences = value;
    });
  }
  static Future prefrencesInit() async {
    instance._preferences ??= await SharedPreferences.getInstance();
  }

  Future<void> clearAll() async {
    await _preferences?.clear();
  }

  Future<void> setStringValue(LocalManagerKeys key, String value) async {
    await _preferences?.setString(key.toString(), value);
  }

  Future<void> setBoolValue(LocalManagerKeys key, value) async {
    await _preferences?.setBool(key.toString(), value);
  }

  Future<void> setIntValue(LocalManagerKeys key, int value) async {
    await _preferences?.setInt(key.toString(), value);
  }

  Future<String> getStringValue(LocalManagerKeys key) async =>
      _preferences?.getString(key.toString()) ?? 'Not Found';

  Future<bool> getBoolValue(LocalManagerKeys key) async =>
      _preferences?.getBool(key.toString()) ?? false;

  Future<int> getIntValue(LocalManagerKeys key) async =>
      _preferences?.getInt(key.toString()) ?? -1;
}