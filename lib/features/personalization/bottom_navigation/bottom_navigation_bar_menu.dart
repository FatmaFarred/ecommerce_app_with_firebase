import 'package:ecommerce_app_with_firebase/core/constants/color_manager.dart';
import 'package:ecommerce_app_with_firebase/features/personalization/bottom_navigation/bottom_navigation_bar_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../core/helpers/helper_functions.dart';

class BottomNavigationBarMenu extends StatelessWidget {
  const  BottomNavigationBarMenu ({super.key});
  static String bottomNavigationRouteName ="BottomNavigationBarMenu";

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(BottomNavigationBarController());
    final dark= MyHelperFunction.isDarkMode(context);

    return Scaffold(

      bottomNavigationBar: Obx(

          ()=>NavigationBar(
            height:80.h ,
            elevation: 0,
            indicatorColor: dark?ColorManager.white.withOpacity(0.1):ColorManager.black.withOpacity(0.1),
            backgroundColor: dark?ColorManager.black:ColorManager.white,

        selectedIndex: controller.selectedIndex.value,
            onDestinationSelected: (index)=>controller.onclick(index),
            destinations:const [
          NavigationDestination(icon: Icon(Iconsax.home), label: "Home"),
          NavigationDestination(icon: Icon(Iconsax.shop), label: "Store"),
          NavigationDestination(icon: Icon(Iconsax.heart), label: "Wish List"),
          NavigationDestination(icon: Icon(Iconsax.user), label: "Profile"),
        
        ]),
      ),
      body: Obx(()=> controller.screens[controller.selectedIndex.value]),



    );
  }
}
