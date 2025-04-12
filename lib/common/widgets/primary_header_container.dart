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
      padding: EdgeInsets.all(0),
      child: SizedBox(
        height: 400.h, // You can adjust this height as needed
        child: Stack(
          children: [
            Positioned(
              child: CircularContainer(),
              top: -150.h,
              right: -250.w,
            ),
            Positioned(
              child: CircularContainer(),
              top: 100.h,
              right: -300.w,
            ),
            stackChild,

          ],
        ),
      ),
    ) ,);
  }
}
