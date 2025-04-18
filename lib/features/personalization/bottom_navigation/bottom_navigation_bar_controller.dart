import 'package:ecommerce_app_with_firebase/core/constants/color_manager.dart';
import 'package:ecommerce_app_with_firebase/features/personalization/screens/settings/settings_screen.dart';
import 'package:ecommerce_app_with_firebase/features/shop/screens/home/home_screen.dart';
import 'package:ecommerce_app_with_firebase/features/shop/screens/wish_list/wish_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../shop/screens/store/store_screen.dart';

class BottomNavigationBarController extends GetxController{

  final Rx <int> selectedIndex=0.obs;
  final screens =[
    HomeScreen(),
    StoreScreen(),
    WishListScreen(),
    SettingsScreen(),


  ];

  void onclick (index){
    selectedIndex.value=index;
  }



}