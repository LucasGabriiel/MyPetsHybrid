import 'package:flutter/material.dart';
import 'package:my_pets/assets/styles.dart';

abstract class MyPetThemes {
  static final darkTheme =  ThemeData(
              textTheme: const TextTheme(
                displayLarge: TextStyle(color: Colors.deepPurpleAccent),
                displayMedium: TextStyle(color: Colors.deepPurpleAccent),
                bodyMedium: TextStyle(color: Colors.deepPurpleAccent),
                titleMedium: TextStyle(color: Colors.orange),
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
              primaryColor: Colors.indigo,
              
    );

    static final brightTheme =  ThemeData(
            textTheme: const TextTheme(
                displayLarge: TextStyle(color: Colors.deepPurple),
                displayMedium: TextStyle(color: Colors.deepPurple),
                bodyMedium: TextStyle(color: Colors.deepPurple),
                titleMedium: TextStyle(color: Colors.pink),
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