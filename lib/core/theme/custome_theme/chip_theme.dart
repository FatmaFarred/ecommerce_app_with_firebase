import 'package:ecommerce_app_with_firebase/core/constants/color_manager.dart';
import 'package:ecommerce_app_with_firebase/core/constants/font_manager/font_style_manager.dart';
import 'package:flutter/material.dart';

class MyChipTheme {
  MyChipTheme._();
  
  static ChipThemeData lightChipTheme =ChipThemeData (
    disabledColor: ColorManager.darkGrey.withOpacity(0.4),
    selectedColor: ColorManager.darkBlue,
    checkmarkColor: ColorManager.white,
    labelStyle: getRegularStyle(color: ColorManager.black),
    padding: EdgeInsets.symmetric(vertical: 12,horizontal:12 )
  );


  static ChipThemeData darkChipTheme =ChipThemeData (
      disabledColor: ColorManager.darkGrey.withOpacity(0.4),
      selectedColor: ColorManager.darkBlue,
      checkmarkColor: ColorManager.white,
      labelStyle: getRegularStyle(color: ColorManager.white),
      padding: EdgeInsets.symmetric(vertical: 12,horizontal:12 )
  );
  
}