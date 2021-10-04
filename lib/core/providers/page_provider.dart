import 'package:flutter/foundation.dart';

class PageProvider with ChangeNotifier {
  int _p = 0;
  int get p => _p;

  changePage(int i) {
    _p = i;
    notifyListeners();
  }
}
