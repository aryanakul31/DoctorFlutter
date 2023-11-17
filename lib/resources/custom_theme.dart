import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'colors.dart';

class CustomTheme {
  final ThemeData _themeData = ThemeData(
    textSelectionTheme:
        const TextSelectionThemeData(cursorColor: CustomColors.appColor),
    fontFamily: "SfProDisplay",
    appBarTheme: const AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarBrightness: Brightness.light,
      ),
      color: CustomColors.appColor,
      elevation: 10,
      iconTheme: IconThemeData(
        color: CustomColors.appColor,
      ),
    ),
    colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.lightBlue)
        .copyWith(background: Colors.white),
  );

  getTheme() {
    return _themeData;
  }
}

enum FontType {
  Text("SfProText"),
  Display("SfProDisplay");

  final String value;

  const FontType(
    this.value,
  );
}
