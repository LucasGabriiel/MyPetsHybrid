import 'package:flutter/material.dart';
import 'package:my_pets/assets/styles.dart';

abstract class MyPetThemes {
  static final darkTheme =  ThemeData(
              scaffoldBackgroundColor: Styles.backgroundColorDark,
              textTheme: const TextTheme(
                displayLarge: TextStyle(color: Styles.secundaryColorDark),
                displayMedium: TextStyle(color: Styles.secundaryColorDark),
                bodyMedium: TextStyle(color: Styles.secundaryColorDark),
                titleMedium: TextStyle(color: Styles.secundaryColorDark),
              ),
              appBarTheme: const AppBarTheme(
                backgroundColor: Colors.transparent,
                elevation: 0,
                titleTextStyle: TextStyle(
                  color: Styles.primaryColorDark, 
                  fontWeight: FontWeight.bold, 
                  fontSize: 28),
                centerTitle: false,
              ),
              brightness: Brightness.dark,
              /* dark theme settings */
              colorScheme: const ColorScheme(
                brightness: Brightness.dark,
                background: Styles.neutralColorDark,
                onBackground: Styles.neutralColorDark,
                primary: Styles.primaryColorDark,
                onPrimary: Styles.primaryColorDark,
                secondary: Styles.secundaryColorDark,
                onSecondary: Styles.secundaryColorDark,
                tertiary: Styles.neutralColorDark,
                onTertiary: Styles.neutralColorDark, 
                error: Styles.accentColorDark,
                onError: Styles.accentColorDark,
                surface: Styles.accentColorDark,
                onSurface: Styles.accentColorDark
                ),
    );

    static final brightTheme =  ThemeData(
            scaffoldBackgroundColor: Styles.backgroundColorBright,
            textTheme: const TextTheme(
                displayLarge: TextStyle(color: Styles.primaryColorBright),
                displayMedium: TextStyle(color: Styles.secundaryColorBright),
                bodyMedium: TextStyle(color: Styles.secundaryColorBright),
                titleMedium: TextStyle(color: Styles.secundaryColorBright),
              ),
            appBarTheme: const AppBarTheme(
              backgroundColor: Colors.transparent,
              elevation: 0,
              titleTextStyle: TextStyle(
                  color: Styles.neutralColorBright, 
                  fontWeight: FontWeight.bold, 
                  fontSize: 28),
              centerTitle: false,
              ),
            brightness: Brightness.light,
            /* light theme settings */
              colorScheme: const ColorScheme(
                brightness: Brightness.light,
                background: Styles.backgroundColorBright,
                onBackground: Styles.backgroundColorBright,
                primary: Styles.primaryColorBright,
                onPrimary: Styles.primaryColorBright,
                secondary: Styles.secundaryColorBright,
                onSecondary: Styles.secundaryColorBright,
                tertiary: Styles.neutralColorBright,
                onTertiary: Styles.neutralColorBright, 
                error: Styles.accentColorBright,
                onError: Styles.accentColorBright,
                surface: Styles.accentColorBright,
                onSurface: Styles.accentColorBright
                ),
            );
}