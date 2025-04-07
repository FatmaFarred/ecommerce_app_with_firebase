import 'package:ecommerce_app_with_firebase/core/constants/color_manager.dart';
import 'package:ecommerce_app_with_firebase/core/constants/font_manager/font_style_manager.dart';
import 'package:flutter/material.dart';

class MyAppBarTheme {
  MyAppBarTheme._();
  static AppBarTheme lightAppBarTheme =AppBarTheme(
   elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: ColorManager.transparent,
    surfaceTintColor: ColorManager.transparent,
    iconTheme: IconThemeData(color:ColorManager.black,size: 24 ),
    actionsIconTheme: IconThemeData(color:ColorManager.black,size: 24),
    titleTextStyle: getBoldStyle(color: ColorManager.black,fontSize:18 )


  );


  static AppBarTheme darkAppBarTheme =AppBarTheme(
      elevation: 0,
      centerTitle: false,
      scrolledUnderElevation: 0,
      backgroundColor: ColorManager.transparent,
      surfaceTintColor: ColorManager.transparent,
      iconTheme: IconThemeData(color:ColorManager.white,size: 24 ),
      actionsIconTheme: IconThemeData(color:ColorManager.white,size: 24),
      titleTextStyle: getBoldStyle(color: ColorManager.white,fontSize:18 )


  );




}