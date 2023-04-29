import 'package:flutter/material.dart';

abstract class MyPetThemes {
  static final darkTheme =  ThemeData(
              textTheme: const TextTheme(
                displayLarge: TextStyle(color: Color(0xFFD3D3D3)),
                displayMedium: TextStyle(color: Color(0xFFD3D3D3)),
                bodyMedium: TextStyle(color: Color(0xFFD3D3D3)),
                titleMedium: TextStyle(color: Color(0xFFED6335)),
              ),
              appBarTheme: const AppBarTheme(
                backgroundColor: Colors.transparent,
                elevation: 0,
                titleTextStyle: TextStyle(
                  color: Colors.white, 
                  fontWeight: FontWeight.bold, 
                  fontSize: 28),
                centerTitle: false,
              ),
              brightness: Brightness.dark,
              /* dark theme settings */
              primaryColor: const Color(0xFF064C72),
              
    );

    static final brightTheme =  ThemeData(
            textTheme: const TextTheme(
                displayLarge: TextStyle(color: Color(0xFFEEEEEE)),
                displayMedium: TextStyle(color: Color(0xFFEEEEEE)),
                bodyMedium: TextStyle(color: Color(0xFFEEEEEE)),
                titleMedium: TextStyle(color: Color(0xFFED6335)),
              ),
            appBarTheme: const AppBarTheme(
              backgroundColor: Colors.transparent,
              elevation: 0,
              titleTextStyle: TextStyle(
                  color: Colors.black, 
                  fontWeight: FontWeight.bold, 
                  fontSize: 28),
              centerTitle: false,
              ),
            brightness: Brightness.light,
            /* light theme settings */
            primaryColor: Colors.red,
      );
}