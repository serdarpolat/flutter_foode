import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {
  bool _isDark = true;
  bool get isDark => _isDark;

  switchTheeme() {
    _isDark = !_isDark;
    notifyListeners();
  }
}
