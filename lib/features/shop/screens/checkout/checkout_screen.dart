import 'package:ecommerce_app_with_firebase/common/widgets/circular_container.dart';
import 'package:ecommerce_app_with_firebase/common/widgets/product_cart/listview_cart_item.dart';
import 'package:ecommerce_app_with_firebase/core/constants/assets_manager.dart';
import 'package:ecommerce_app_with_firebase/core/constants/color_manager.dart';
import 'package:ecommerce_app_with_firebase/core/customized_widgets/reusable_widgets/custom_text_field.dart';
import 'package:ecommerce_app_with_firebase/core/customized_widgets/reusable_widgets/customized_elevated_button.dart';
import 'package:ecommerce_app_with_firebase/features/authentication/screens/success/success_screen.dart';
import 'package:ecommerce_app_with_firebase/features/personalization/bottom_navigation/bottom_navigation_bar_menu.dart';
import 'package:ecommerce_app_with_firebase/features/shop/screens/checkout/widgets/biiling_payment_section.dart';
import 'package:ecommerce_app_with_firebase/features/shop/screens/checkout/widgets/billing_address_section.dart';
import 'package:ecommerce_app_with_firebase/features/shop/screens/checkout/widgets/billing_amount_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../common/widgets/custom_appbar/custom_appbar.dart';
import '../../../../common/widgets/product_cart/my_coupon_code.dart';
import '../../../../core/helpers/helper_functions.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});
  static String routeName="CheckoutScreen";

  @override
  Widget build(BuildContext context) {
    final dark= MyHelperFunction.isDarkMode(context);

    return Scaffold(
      appBar: MyCustomAppbar(title: Text("Order Review"),showLeadingIcon: true,),
      body: SingleChildScrollView(child: Padding(padding: EdgeInsets.all(24.w),
      child: Column(children: [
        ///items in cart
        MyListViewCartItem(showAddRemoveButtons: false,),
        SizedBox(height: 32.h,),

        ///coupon text field
        MyCouponCode(),
        SizedBox(height: 32.h,),

        ///billing section
        CircularContainer(
          backGroundColor: ColorManager.transparent,
          border: Border.all(color: dark?ColorManager.darkGrey:ColorManager.lightGrey),
          padding: EdgeInsets.all(16.w),
          radius: 16.r,
          child: Column(children: [
            ///PRICING
           MyBillingAmountSection(),
            SizedBox(height: 18.h,),

            ///DIVIDER
            Divider(),
            SizedBox(height: 18.h,),

            ///PAYMET METHODS
           MyBillingPaymentSection(),
            SizedBox(height: 18.h,),

            ///ADDRESS
              MyBillingAddressSection(),
            SizedBox(height: 18.h,),
          ],),
        )



      ],),


      ),

      ),
        bottomNavigationBar: Padding(
          padding:  EdgeInsets.all(24.w),
          child: CustomizedElevatedButton(borderColor:ColorManager.purple ,color: ColorManager.purple,
              onPressed: ()=>Get.to(SuccessScreen(title: "Payment Success", subTitle: "Your item will be shipped soon ", imagePath: LottieAssets.onboarding2,onPressed: ()=>Get.offAllNamed(BottomNavigationBarMenu.bottomNavigationRouteName),)),
              bottonWidget: Text("Checkout \$287",style: Theme.of(context).textTheme.bodyMedium!.apply(color: ColorManager.white),)),
        )

    );
  }
}

