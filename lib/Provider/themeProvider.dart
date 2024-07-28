import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Themeprovider extends ChangeNotifier {
  bool isDarkmodeChecked = true;

  void updateMode({required bool darkMode}) async {
    isDarkmodeChecked = darkMode;
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool("isDarkmodeChecked", darkMode);

    notifyListeners();
  }

  void loadmode() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    isDarkmodeChecked = prefs.getBool("isDarkmodeChecked") ?? true;
    notifyListeners();
  }
}
