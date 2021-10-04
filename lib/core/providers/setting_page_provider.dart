import 'package:flutter/foundation.dart';

class SettingPageProvider with ChangeNotifier {
  int _p = 0;
  int get page => _p;

  changePage(int i) {
    _p = i;
    notifyListeners();
  }
}
