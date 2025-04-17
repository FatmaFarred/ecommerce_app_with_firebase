import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce_app_with_firebase/common/widgets/gridview_layout.dart';
import 'package:ecommerce_app_with_firebase/common/widgets/product_cart/product_card_vertical.dart';
import 'package:ecommerce_app_with_firebase/core/constants/assets_manager.dart';
import 'package:ecommerce_app_with_firebase/core/constants/color_manager.dart';
import 'package:ecommerce_app_with_firebase/core/customized_widgets/reusable_widgets/custom_text_field.dart';
import 'package:ecommerce_app_with_firebase/core/helpers/helper_functions.dart';
import 'package:ecommerce_app_with_firebase/features/shop/screens/home/widgets/home_category.dart' show HomeCategory;
import 'package:ecommerce_app_with_firebase/features/shop/screens/home/widgets/my_home_appbar.dart';
import 'package:ecommerce_app_with_firebase/features/shop/screens/home/widgets/my_promo_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/category_widget.dart';
import '../../../../common/widgets/circular_container.dart';
import '../../../../common/widgets/custom_appbar/custom_appbar.dart';
import '../../../../common/widgets/primary_header_container.dart';
import '../../../../common/widgets/product_cart/cart_counter.dart';
import '../../../../common/widgets/image_rounded_container.dart';
import '../../../../common/widgets/title_heading/title_heading.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark= MyHelperFunction.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            MyPrimaryHeaderContainer(stackChild: Column(children: [
              MyHomeAppBar(),
              SizedBox(height: 32.h,),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 16.h),
                child: CustomTextField(prefixIcon: Icon(Iconsax.search_normal),
                hintText:"Search in store" ,
                  fillColor: dark?ColorManager.black:ColorManager.white,
                  borderColor:dark?ColorManager.black:ColorManager.white,
                ),
              ),
              SizedBox(height: 32.h,),
             Padding(
               padding:  EdgeInsets.only(left: 16.w),
               child: Column(children: [
                 MyTitleHeading(title: "Popular categories",TextColor: ColorManager.white,showActionButton: false,
                 ),
                 SizedBox(height: 16.h,),

                 ///categorieS
                 HomeCategory(),


               ],),
             )

            ],
            )),
            Padding(
              padding:  EdgeInsets.all(16.h),
              child: Column(
                children: [
                  MyPromoSlider(),
                  SizedBox(height: 32.h,),
                  MyTitleHeading(title: "Popular categories",onButtonClick: (){},),
                  SizedBox(height: 16.h,),


                MyGridViewLayout(itemCount: 4, itembuilder: (_,index)=>const MyProductCardVertical())

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}










