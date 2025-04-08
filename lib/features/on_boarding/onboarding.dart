import 'package:ecommerce_app_with_firebase/core/constants/assets_manager.dart';
import 'package:ecommerce_app_with_firebase/core/constants/color_manager.dart';
import 'package:ecommerce_app_with_firebase/core/constants/font_manager/font_style_manager.dart';
import 'package:ecommerce_app_with_firebase/core/customized_widgets/reusable_widgets/customized_elevated_button.dart';
import 'package:ecommerce_app_with_firebase/core/device/device_utility.dart';
import 'package:ecommerce_app_with_firebase/features/on_boarding/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';
import 'package:lottie/lottie.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'smooth_page_indicator.dart';
import '../../core/customized_widgets/reusable_widgets/text_botton.dart';
import 'onboarding_page_widget.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});


  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingControlller());
    return  Scaffold(
      body: Stack(children: [
        PageView(
          controller:controller.pageController,
          onPageChanged: controller.updatePageIndicator,
          children: [
         OnBoardingPageWidget(text:"Choose your product" ,
         subText: "Welcome to a world of limitless choices- Your perfect product awaits!",
           imagePath: LottieAssets.onboarding1 ,
         ),
          OnBoardingPageWidget(text:"Select payment method" ,
            subText: "For seamless transaction, choose your payment path - Your convenience is our priority!",
            imagePath: LottieAssets.onboarding2 ,
          ),
          OnBoardingPageWidget(text:"Deliver at your door step" ,
            subText: "From our door step to yours - Swift, Secure, and contactless delivery !",
            imagePath: LottieAssets.onboarding3 ,
          ),
        ],),
        Positioned(top: MyDeviceUtility.getAppBarHeight(),right: 16.w,
            child:MyTextButton(onBottonClick: () {
              controller.skipPage();

            },


          buttonWidegt:Text("skip",
            style: getSemiBoldStyle(color: ColorManager.purple),) ,)),
        Positioned(bottom: MyDeviceUtility.getBottmNavigationBarHeight(),left: 18.w,

            child: MySmoothPageIndicator()),
        Positioned(bottom: MyDeviceUtility.getBottmNavigationBarHeight(),
          right: 16.w,
          child: SizedBox(width: 72.w,height: 72.h,
            child: CustomizedElevatedButton(bottonWidget:Icon (Icons.arrow_forward_ios_rounded,color:ColorManager.white ,size: 15, ),color:ColorManager.purple ,borderColor:ColorManager.purple ,onPressed:() {
              controller.nextPage();
            }
            ,)),

        )

      ],),

    );
  }
}




