import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../core_shelf.dart';

class Utils {
  static final Utils _instance = Utils();
  static Utils get instance => _instance;

  void setSystemUi(bool isDark) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: Color(isDark ? 0xffffff : 0xff121212),
        statusBarColor: Color(isDark ? 0xff3280c0 : 0xff616161),
        systemNavigationBarIconBrightness:
            isDark ? Brightness.dark : Brightness.light,
      ),
    );
  }
}
