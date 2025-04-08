import 'package:ecommerce_app_with_firebase/core/constants/assets_manager.dart';
import 'package:ecommerce_app_with_firebase/core/constants/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

import 'onboarding_page_widget.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(children: [
        PageView(children: [
         OnBoardingPageWidget(text:"Choose your product" ,
         subText: "Welcome to a world of limitless choices- Your perfect product awaits!",
           imagePath: LottieAssets.onboarding1 ,
         )
        ],)
      ],),

    );
  }
}

