import 'package:flutter/material.dart';

class MyThemeData {
  static Color primaryColor = Color(0xFFB7935F);
  static Color secondColor = Color(0xFF242424);
  static ThemeData lightTheme = ThemeData(
      scaffoldBackgroundColor: Colors.white,

      appBarTheme: AppBarTheme(


        color: Colors.white,
        elevation: 0.0,
      ),
      textTheme: TextTheme(
        bodyLarge: TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        bodySmall: TextStyle(
          color: Colors.black,
          fontSize: 12,
          fontWeight: FontWeight.bold,
        ),
        bodyMedium: TextStyle(
          color: Colors.black,
          fontSize: 15,
          fontWeight: FontWeight.bold,

        ),

      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        type: BottomNavigationBarType.shifting,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.black,
      )


  );
}
