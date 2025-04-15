import 'package:ecommerce_app_with_firebase/core/constants/color_manager.dart';
import 'package:ecommerce_app_with_firebase/core/customized_widgets/reusable_widgets/custom_text_field.dart';
import 'package:ecommerce_app_with_firebase/features/shop/screens/home/widgets/my_home_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/custom_appbar/custom_appbar.dart';
import '../../../../common/widgets/primary_header_container.dart';
import '../../../../common/widgets/product_cart/cart_counter.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
                  fillColor: ColorManager.white,
                  borderColor:ColorManager.white,


                ),
              )
              


            ],



            )),
          ],
        ),
      ),
    );
  }
}




