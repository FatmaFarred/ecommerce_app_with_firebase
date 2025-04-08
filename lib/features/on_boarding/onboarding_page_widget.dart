import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

import '../../core/constants/assets_manager.dart';

class OnBoardingPageWidget extends StatelessWidget {
   OnBoardingPageWidget({
    required this.text, required this.imagePath, required this.subText
  });
  String imagePath;
  String text;
  String subText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal:16.w),
      child: Column(children: [
        Container(height:600.h,width:300.w,
          child: Lottie.asset(imagePath ),),
        Text(text,
          style: Theme.of(context).textTheme.headlineMedium,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 20.h,),
        Text(subText,
          style: Theme.of(context).textTheme.bodyMedium,
          textAlign: TextAlign.center,
        ),



      ],),
    );
  }
}
