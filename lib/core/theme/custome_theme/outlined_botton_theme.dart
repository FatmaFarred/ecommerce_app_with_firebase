import 'package:ecommerce_app_with_firebase/core/constants/color_manager.dart';
import 'package:ecommerce_app_with_firebase/core/constants/font_manager/font_style_manager.dart';
import 'package:flutter/material.dart';

class MyOutLinedBottonTheme{
  MyOutLinedBottonTheme._();

  static OutlinedButtonThemeData lightOutlinedButtonTheme =OutlinedButtonThemeData(
    style:OutlinedButton.styleFrom(
      padding: EdgeInsets.symmetric(vertical: 16,horizontal: 20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
      elevation: 0,
      foregroundColor: ColorManager.black,
      side:  BorderSide(color: ColorManager.darkBlue),
      textStyle: getSemiBoldStyle(color: ColorManager.black,fontSize: 16),




    )


  );

  static OutlinedButtonThemeData darkOutlinedButtonTheme =OutlinedButtonThemeData(
      style:OutlinedButton.styleFrom(
        padding: EdgeInsets.symmetric(vertical: 16,horizontal: 20),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
        elevation: 0,
        foregroundColor: ColorManager.white,
        side:  BorderSide(color: ColorManager.darkBlue),
        textStyle: getSemiBoldStyle(color: ColorManager.white,fontSize: 16),




      )


  );





}