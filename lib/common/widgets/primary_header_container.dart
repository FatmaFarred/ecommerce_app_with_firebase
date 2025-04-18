import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/constants/color_manager.dart';
import 'circular_container.dart';
import 'custome_curve_edge_widget.dart';

class MyPrimaryHeaderContainer extends StatelessWidget {
  const MyPrimaryHeaderContainer({
    super.key, required this.stackChild,
  });
  final Widget stackChild;
  @override
  Widget build(BuildContext context) {
    return CurvedEdgeWidegt(child:Container(
      color: ColorManager.purple,
      padding: EdgeInsets.only(bottom:32.h),
      child: Stack(
        children: [
          Positioned(
            top: -150.h,
            right: -250.w,
            child: CircularContainer(),
          ),
          Positioned(
            top: 100.h,
            right: -300.w,
            child: CircularContainer(),
          ),
          stackChild,

        ],
      ),
    ) ,);
  }
}
