import 'package:flutter/foundation.dart';

class OnboardProvider with ChangeNotifier {
  int _page = 0;
  int get page => _page;

  changePage(int p) {
    _page = p;
    notifyListeners();
  }
}
