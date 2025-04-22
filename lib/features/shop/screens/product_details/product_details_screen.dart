import 'package:ecommerce_app_with_firebase/common/widgets/custom_appbar/custom_appbar.dart';
import 'package:ecommerce_app_with_firebase/common/widgets/custome_curve_edge_widget.dart';
import 'package:ecommerce_app_with_firebase/common/widgets/image_rounded_container.dart';
import 'package:ecommerce_app_with_firebase/core/constants/assets_manager.dart';
import 'package:ecommerce_app_with_firebase/core/constants/color_manager.dart';
import 'package:ecommerce_app_with_firebase/core/helpers/helper_functions.dart';
import 'package:ecommerce_app_with_firebase/features/shop/screens/product_details/widgets/product_image_slider.dart';
import 'package:ecommerce_app_with_firebase/features/shop/screens/product_details/widgets/product_mata_data.dart';
import 'package:ecommerce_app_with_firebase/features/shop/screens/product_details/widgets/rate_and_share_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  static String routeName = "ProductDetailsScreen";

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunction.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [

          /// product image slider
          MyProuctImageSlider(),

          ///product details
          Padding(
            padding: EdgeInsets.only(bottom: 24.h, right: 24.w, left: 24.w),
            child: Column(children: [
              MyRatingAndShare(),


              ///price & title & stock & brand
              ProductMetaData()

            ],),

          )

        ],),
      ),
    );
  }


}
