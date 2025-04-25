



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
    this.backGroundColor, this.margin, this.border,

  });
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? padding,margin;
  final double ?radius;
  final Widget? child ;
  final Color? backGroundColor;
  final BoxBorder? border;


  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
       border:border ,
        borderRadius: BorderRadius.circular(radius??400.r),
        color: backGroundColor??ColorManager.white.withOpacity(0.1),
      ),
      child: child,

    );
  }
}