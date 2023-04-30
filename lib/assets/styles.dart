import 'package:flutter/cupertino.dart';

abstract class Styles {
  static const TextStyle optionsText = TextStyle(
    color: Color.fromRGBO(0, 0, 0, 1),
    fontSize: 18,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.normal,
  );

  static const TextStyle productRowTotal = TextStyle(
    color: Color.fromRGBO(0, 0, 0, 0.8),
    fontSize: 18,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle productRowItemPrice = TextStyle(
    color: Color(0xFF8E8E93),
    fontSize: 13,
    fontWeight: FontWeight.w300,
  );

  static const TextStyle searchText = TextStyle(
    color: Color.fromRGBO(0, 0, 0, 1),
    fontSize: 14,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.normal,
  );

  static const TextStyle deliveryTimeLabel = TextStyle(
    color: Color(0xFFC2C2C2),
    fontWeight: FontWeight.w300,
  );

  static const TextStyle deliveryTime = TextStyle(
    color: CupertinoColors.inactiveGray,
  );


// Bright mode
  static const Color productRowDividerBright = Color(0xFFD9D9D9);
  static const Color neutralColorBright = Color(0xFF064C72);
  static const Color primaryColorBright = Color(0xFFFFFFFF);
  static const Color secundaryColorBright = Color(0xFFF5F5F5);
  static const Color accentColorBright = Color(0xFFF0943F);
  static const Color backgroundColorBright = Color(0xFFEEEEEE);


// Dark Mode
  static const Color productRowDividerDark = Color(0xFFD9D9D9);
  static const Color neutralColorDark = Color(0xFF212629);
  static const Color primaryColorDark = Color(0xFF81D4FA);
  static const Color secundaryColorDark = Color(0xFFEEEEEE);
  static const Color accentColorDark = Color(0xFFED6335);
  static const Color backgroundColorDark = Color(0xFF000000);
}