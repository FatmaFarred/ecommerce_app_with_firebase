import 'package:ecommerce_app_with_firebase/common/widgets/custom_appbar/custom_appbar.dart';
import 'package:ecommerce_app_with_firebase/common/widgets/custome_curve_edge_widget.dart';
import 'package:ecommerce_app_with_firebase/common/widgets/image_rounded_container.dart';
import 'package:ecommerce_app_with_firebase/common/widgets/title_heading/title_heading.dart';
import 'package:ecommerce_app_with_firebase/core/constants/assets_manager.dart';
import 'package:ecommerce_app_with_firebase/core/constants/color_manager.dart';
import 'package:ecommerce_app_with_firebase/core/customized_widgets/reusable_widgets/customized_elevated_button.dart';
import 'package:ecommerce_app_with_firebase/core/helpers/helper_functions.dart';
import 'package:ecommerce_app_with_firebase/features/shop/screens/product_details/widgets/bottom_add_to_cart.dart';
import 'package:ecommerce_app_with_firebase/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:ecommerce_app_with_firebase/features/shop/screens/product_details/widgets/product_image_slider.dart';
import 'package:ecommerce_app_with_firebase/features/shop/screens/product_details/widgets/product_mata_data.dart';
import 'package:ecommerce_app_with_firebase/features/shop/screens/product_details/widgets/rate_and_share_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

import '../../../../core/constants/enums.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  static String routeName = "ProductDetailsScreen";

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunction.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: MyBottomAddToCart(),
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
              ProductMetaData(),

              ///variation&attributes
              ProductAttributes(),

              ///CheckoutButton
              Padding(
                padding:  EdgeInsets.symmetric(vertical: 32.h),
                child: CustomizedElevatedButton(color: ColorManager.purple,borderColor:ColorManager.purple ,
                    bottonWidget: Text("Checkout",style: Theme.of(context).textTheme.bodyLarge!.apply(color: ColorManager.white),)),
              ),

              ///Description 
              MyTitleHeading(title: "Description",showActionButton: false,productTextSize:TextSizees.large,),
              SizedBox(height: 16.h,),
              ReadMoreText("This is a product descrption for a nike green shoes ,houdonopjh; dodu'pjfj fhhroirhr ufgsg: d; fkfi'dn;fj ",
              trimLines: 2,
                trimMode: TrimMode.Line,
                trimCollapsedText: "Show more",
                trimExpandedText: "Less",
                lessStyle: TextStyle(fontWeight: FontWeight.w800,fontSize: 14),
                moreStyle: TextStyle(fontWeight: FontWeight.w800,fontSize: 14),

              ),
              const Divider(),
               SizedBox(height:16.h),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                MyTitleHeading(title: "Reviews(199)",productTextSize:TextSizees.large,showActionButton: false,),
                IconButton(onPressed: (){}, icon: Icon(Iconsax.arrow_right_34))

              ],)


            ],),

          )

        ],),
      ),
    );
  }


}
