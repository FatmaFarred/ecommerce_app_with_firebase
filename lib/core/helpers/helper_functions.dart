import 'package:flutter/material.dart';

class MyHelperFunction {
  MyHelperFunction._()  ;
  static bool isDarkMode (BuildContext context){
    return Theme.of(context).brightness==Brightness.dark;
  }

  static Color? getColor(String value){
    if (value=="Green"){
      return Colors.green;
    }else if (value=="Red"){
      return Colors.red;

    }else if (value=="Yellow"){
      return Colors.yellow;

    }else if (value=="Blue"){
      return Colors.blue;

    }else if (value=="Black"){
  return Colors.black;

    }else if (value=="Grey"){
      return Colors.grey;

    }else if (value=="White"){
      return Colors.white;

    }else if (value=="Orange"){
      return Colors.orange;

    }else if (value=="Pink"){
  return Colors.pink;

  }else {
      return null;
    }

  }

}