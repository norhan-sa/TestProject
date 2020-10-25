import 'package:flutter/material.dart';

class IntroPro extends ChangeNotifier{

      int _pageNo;

      final darkTheme = ThemeData(
      primarySwatch: Colors.grey,
      primaryColor: Colors.black,
      brightness: Brightness.dark,
      scaffoldBackgroundColor: Colors.black,
      accentColor: Colors.white,
      accentIconTheme: IconThemeData(color: Colors.black),
      dividerColor: Colors.black12,
      textTheme: TextTheme(
        bodyText2: TextStyle(
          color: Colors.white,
        ),
      ),
    );

    final lightTheme = ThemeData(
      primarySwatch: Colors.grey,
      primaryColor: Colors.white,
      brightness: Brightness.light,
      backgroundColor: const Color(0xFFE5E5E5),
      accentColor: Colors.black,
      accentIconTheme: IconThemeData(color: Colors.white),
      dividerColor: Colors.white54,
      textTheme: TextTheme(
        bodyText2: TextStyle(
        color: Colors.black,
        ),
      ),
    );

   ThemeData _themeData;
   bool isSwitched = false;
   bool _mood;

   getTheme() => _themeData;
    get pageNo => _pageNo;

   IntroPro(this._mood);

   void changeMood(bool mood){
     if(mood)
     _themeData = darkTheme;
     else _themeData = lightTheme;
    notifyListeners();
   }
  
  void chandPage(int no){
    _pageNo = no;
    notifyListeners(); 
  }
}