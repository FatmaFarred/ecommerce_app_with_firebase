import 'package:ecommerce_app_with_firebase/common/widgets/custom_appbar/custom_appbar.dart';
import 'package:ecommerce_app_with_firebase/common/widgets/image_rounded_container.dart';
import 'package:ecommerce_app_with_firebase/core/constants/assets_manager.dart';
import 'package:ecommerce_app_with_firebase/core/constants/color_manager.dart';
import 'package:ecommerce_app_with_firebase/features/shop/screens/cart/widgets/cart_item.dart';
import 'package:ecommerce_app_with_firebase/features/shop/screens/cart/widgets/whole_cart_item.dart';
import 'package:ecommerce_app_with_firebase/features/shop/screens/checkout/checkout_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/circular_conatiner_icon.dart';
import '../../../../common/widgets/product_cart/brand_title_with_icon.dart';
import '../../../../common/widgets/product_cart/listview_cart_item.dart';
import '../../../../common/widgets/product_cart/proctuct_quantity_add_remove_button.dart';
import '../../../../common/widgets/text/product_title.dart';
import '../../../../core/constants/enums.dart';
import '../../../../core/customized_widgets/reusable_widgets/customized_elevated_button.dart';
import '../../../../core/helpers/helper_functions.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});
  static String routeName="CartScreen";

  @override
  Widget build(BuildContext context) {
    final dark= MyHelperFunction.isDarkMode(context);

    return Scaffold(
      appBar: MyCustomAppbar(title: Text("Cart"),showLeadingIcon: true,),
      body: Padding(padding: EdgeInsets.all(24.w),
       child: MyListViewCartItem(),
      ),

      bottomNavigationBar: Padding(
        padding:  EdgeInsets.all(24.w),
        child: CustomizedElevatedButton(borderColor:ColorManager.purple ,color: ColorManager.purple,
            onPressed: ()=>Get.toNamed(CheckoutScreen.routeName),
            bottonWidget: Text("Checkout \$287",style: Theme.of(context).textTheme.bodyMedium!.apply(color: ColorManager.white),)),
      )
      ,

    );
  }
}




