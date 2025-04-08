import 'package:ecommerce_app_with_firebase/core/theme/custome_theme/appbar_theme.dart';
import 'package:ecommerce_app_with_firebase/core/theme/custome_theme/checkbox_theme.dart';
import 'package:ecommerce_app_with_firebase/core/theme/custome_theme/chip_theme.dart';
import 'package:ecommerce_app_with_firebase/core/theme/custome_theme/outlined_botton_theme.dart';
import 'package:ecommerce_app_with_firebase/core/theme/my_text_theme.dart';
import 'package:flutter/material.dart';

import '../constants/color_manager.dart';
import 'custome_theme/bottomsheet_theme.dart' show MyBottomSheetTheme;


class MyAppTheme {
  MyAppTheme._();
  static ThemeData lightTheme=ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    primaryColor: ColorManager.darkBlue,
    scaffoldBackgroundColor: ColorManager.white,
    textTheme: MyTextTheme.lightTextTheme,
    appBarTheme:MyAppBarTheme.lightAppBarTheme,
      bottomSheetTheme:MyBottomSheetTheme.lightBottomSheet,
    checkboxTheme:MyCheckBoxTheme.lightCheckBox,
    chipTheme:MyChipTheme.lightChipTheme,
    outlinedButtonTheme:MyOutLinedBottonTheme.lightOutlinedButtonTheme
  );




  static ThemeData darkTheme=ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      primaryColor: ColorManager.darkBlue,
      scaffoldBackgroundColor: ColorManager.black,
      textTheme: MyTextTheme.darkTextTheme,
      appBarTheme:MyAppBarTheme.darkAppBarTheme,
      bottomSheetTheme:MyBottomSheetTheme.darkBottomSheet,
      checkboxTheme:MyCheckBoxTheme.darkCheckBox,
      chipTheme:MyChipTheme.darkChipTheme,
      outlinedButtonTheme:MyOutLinedBottonTheme.darkOutlinedButtonTheme



  );






}