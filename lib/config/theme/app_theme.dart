import 'package:flutter/material.dart';

class AppTheme{
  static const Color lightPrimary =  Color(0xFF39A552);
  static  ThemeData light = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    primaryColor: lightPrimary,
    appBarTheme:  const AppBarTheme(
      backgroundColor: lightPrimary,
      iconTheme:IconThemeData(
          color: Colors.white
      ),
      centerTitle:  true,
      titleTextStyle: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w400,
            color: Colors.white
        ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(50),
          bottomLeft: Radius.circular(50),
        ),
      ),
    )
  );
}