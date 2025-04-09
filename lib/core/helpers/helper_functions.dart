import 'package:flutter/material.dart';

class MyHelperFunction {
  MyHelperFunction._()  ;
  static bool isDarkMode (BuildContext context){
    return Theme.of(context).brightness==Brightness.dark;
  }

}