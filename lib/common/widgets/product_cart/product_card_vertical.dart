import 'package:ecommerce_app_with_firebase/common/widgets/title_heading/image_rounded_container.dart';
import 'package:ecommerce_app_with_firebase/core/constants/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helpers/helper_functions.dart';

class MyProductCardVertical extends StatelessWidget {
   const MyProductCardVertical ({super.key});

  @override
  Widget build(BuildContext context) {
    final dark= MyHelperFunction.isDarkMode(context);

    return  Container(
      width: 180.w,
      padding: EdgeInsets.all(5.w),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(16.r),
        color: dark?ColorManager.darkGrey:ColorManager.white

      ),
       child: Column(
         children: [
           Stack(
             children: [
               ImageRoundedContainer(imageUrl: imageUrl),

             ],
           )
         ],
       ),



    );
  }
}
