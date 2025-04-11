



import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/constants/color_manager.dart';


class CircularContainer extends StatelessWidget {
  const CircularContainer({
    super.key,
    this.height,
    this.width,
    this.padding,
    this.child,
    this.radius,
    this.backGroundColor,

  });
  final double? width;
  final double? height;
  final double? padding;
  final double ?radius;
  final Widget? child ;
  final Color? backGroundColor;


  @override
  Widget build(BuildContext context) {
    return Container(
      width: width??400.w,
      height: height??400.h,
      padding: EdgeInsets.all(padding??0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius??400.r),
        color: backGroundColor??ColorManager.white.withOpacity(0.1),
      ),
      child: child,

    );
  }
}