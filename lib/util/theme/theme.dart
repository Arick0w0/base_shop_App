import 'package:flutter/material.dart';
import 'package:flutter_store_beginner/util/theme/custom_theme/appbar_theme.dart';
import 'package:flutter_store_beginner/util/theme/custom_theme/bottom_sheet_theme.dart';
import 'package:flutter_store_beginner/util/theme/custom_theme/checkbox_theme.dart';
import 'package:flutter_store_beginner/util/theme/custom_theme/chip_theme.dart';
import 'package:flutter_store_beginner/util/theme/custom_theme/elevated_button_theme.dart';
import 'package:flutter_store_beginner/util/theme/custom_theme/outlined_button_theme.dart';
import 'package:flutter_store_beginner/util/theme/custom_theme/text_field_theme.dart';
import 'package:flutter_store_beginner/util/theme/custom_theme/text_theme.dart';

class RAppTheme {
  RAppTheme._();

// --------------- Light Theme --------------
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    textTheme: RTextTheme.lightTheme,
    chipTheme: RChipTheme.lightChipTheme,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: RAppBarTheme.lightAppBarTheme,
    checkboxTheme: RCheckBoxTheme.lightCheckboxThemeData,
    bottomSheetTheme: RBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: RElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: ROutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: RTextFormFieldTheme.lightInputDecorationTheme,
  );

  // -------------- Dark Theme --------------
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    textTheme: RTextTheme.darkTheme,
    chipTheme: RChipTheme.darkChipTheme,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: RAppBarTheme.darkAppBarTheme,
    checkboxTheme: RCheckBoxTheme.darkCheckboxThemeData,
    bottomSheetTheme: RBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: RElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: ROutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: RTextFormFieldTheme.darkInputDecorationTheme,
  );
}
