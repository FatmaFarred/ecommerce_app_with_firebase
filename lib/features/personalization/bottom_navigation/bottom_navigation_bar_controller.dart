import 'package:ecommerce_app_with_firebase/core/constants/color_manager.dart';
import 'package:ecommerce_app_with_firebase/features/shop/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavigationBarController extends GetxController{

  final Rx <int> selectedIndex=0.obs;
  final screens =[
    HomeScreen(),
    Container(color: ColorManager.yellow,),
    Container(color: ColorManager.darkBlue,),
    Container(color: ColorManager.starRateColor,),


  ];

  void onclick (index){
    selectedIndex.value=index;
  }



}