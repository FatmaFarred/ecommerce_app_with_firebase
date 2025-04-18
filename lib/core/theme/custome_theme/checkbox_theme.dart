import 'package:ecommerce_app_with_firebase/core/constants/color_manager.dart';
import 'package:flutter/material.dart';

class MyCheckBoxTheme {

  MyCheckBoxTheme._();
  static CheckboxThemeData lightCheckBox = CheckboxThemeData (
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4) ),
    checkColor: WidgetStateProperty.resolveWith((states){
      if(states.contains(WidgetState.selected)){
        return ColorManager.white;

      }else {
        return ColorManager.black;
      }

    }
),
    fillColor: WidgetStateProperty. resolveWith((states){
      if(states.contains(WidgetState.selected)){
        return ColorManager.purple;

      }else {
        return ColorManager.transparent;
      }

    }
    ),

  );


  static CheckboxThemeData darkCheckBox = CheckboxThemeData (
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4) ),
    checkColor: WidgetStateProperty.resolveWith((states){
      if(states.contains(WidgetState.selected)){
        return ColorManager.white;

      }else {
        return ColorManager.black;
      }

    }
    ),
    fillColor: WidgetStateProperty. resolveWith((states){
      if(states.contains(WidgetState.selected)){
        return ColorManager.purple;

      }else {
        return ColorManager.transparent;
      }

    }
    ),

  );






}