import 'package:ecommerce_app_with_firebase/common/widgets/custom_appbar/custom_appbar.dart';
import 'package:ecommerce_app_with_firebase/common/widgets/gridview_layout.dart';
import 'package:ecommerce_app_with_firebase/common/widgets/product_cart/product_card_vertical.dart';
import 'package:ecommerce_app_with_firebase/features/authentication/screens/login/login_screen.dart';
import 'package:ecommerce_app_with_firebase/features/personalization/bottom_navigation/bottom_navigation_bar_menu.dart';
import 'package:ecommerce_app_with_firebase/features/shop/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';

class WishListScreen extends StatelessWidget {
  const WishListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyCustomAppbar(
        title: Text("wishlist",
        style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          IconButton(onPressed: ()=>Get.to(HomeScreen()) ,
            icon: Icon(Iconsax.add),iconSize: 35.h,),

        ],

      ),
      body: SingleChildScrollView(padding: EdgeInsets.all(24.w),
      child: Column(children: [
        MyGridViewLayout(itemCount: 6, itembuilder: (_,index)=> const MyProductCardVertical())
      ],),

      ),
    );
  }
}
