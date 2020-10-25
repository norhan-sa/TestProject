import 'package:flutter/material.dart';

class IntroPro extends ChangeNotifier{

      final darkTheme = ThemeData(
      primarySwatch: Colors.grey,
      primaryColor: Colors.black,
      brightness: Brightness.dark,
      backgroundColor: const Color(0xFF212121),
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
   String _mood;

   getTheme() => _themeData;

   IntroPro(this._mood);

   void changeMood(String mood){
     if(mood == 'dark')
     _themeData = darkTheme;
     else _themeData = lightTheme;
    notifyListeners();
   }
}