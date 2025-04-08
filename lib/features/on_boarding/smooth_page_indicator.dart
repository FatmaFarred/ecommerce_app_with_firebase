import 'package:ecommerce_app_with_firebase/features/on_boarding/onboarding_controller.dart';
import 'package:flutter/material.dart' ;
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../core/constants/color_manager.dart';

class MySmoothPageIndicator extends StatelessWidget {
  const MySmoothPageIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingControlller.instanse;
    return SmoothPageIndicator(controller: controller.pageController, count: 3,
        onDotClicked:controller.dotNavigationClick ,
        effect:ExpandingDotsEffect(activeDotColor: ColorManager.purple,dotHeight: 6.h)
    );
  }
}
