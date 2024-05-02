import 'package:flutter/material.dart';

class MainProvider with ChangeNotifier{
  ThemeMode _themeMode = ThemeMode.light ;

  String _language = 'en';

  String get language => _language;

  setLanguage(String lang){
    _language = lang;
    notifyListeners();
  }

  ThemeMode get themeMode => _themeMode;

  setThemeMode(ThemeMode themeMode){
    _themeMode = themeMode;
    notifyListeners();
  }
}