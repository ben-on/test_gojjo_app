import 'package:flutter/material.dart';

class TabManager extends ChangeNotifier {
  int selectedScreenIndex = 0;

  void gotoTab(int index) {
    selectedScreenIndex = index;
    notifyListeners();
  }
}
