import 'package:flutter/cupertino.dart';

abstract class Styles {
  static const TextStyle optionsText = TextStyle(
    fontSize: 18,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.normal,
  );

  static const TextStyle header1 = TextStyle(
    fontSize: 36,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle header2 = TextStyle(
    fontSize: 24,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle header3 = TextStyle(
    fontSize: 14,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle body1 = TextStyle(
    fontSize: 12,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.normal,
  );

    static const TextStyle body2 = TextStyle(
    fontSize: 10,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.normal,
  );

  static const Color listSeparator = Color(0xFFD9D9D9);

// Bright mode
  static const Color neutralColorBright = Color(0xFF064C72);
  static const Color primaryColorBright = Color(0xFFFFFFFF);
  static const Color secundaryColorBright = Color(0xFFF5F5F5);
  static const Color accentColorBright = Color(0xFFF0943F);
  static const Color backgroundColorBright = Color(0xFFEEEEEE);


// Dark Mode
  static const Color neutralColorDark = Color(0xFF212629);
  static const Color primaryColorDark = Color(0xFF81D4FA);
  static const Color secundaryColorDark = Color(0xFFEEEEEE);
  static const Color accentColorDark = Color(0xFFED6335);
  static const Color backgroundColorDark = Color(0xFF000000);
}