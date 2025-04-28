
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CircularConatinerIcon extends StatelessWidget {
  const CircularConatinerIcon({super.key,  this.backGroundColor,  this.height,  this.width,  this.onPressed,required this.icon,  this.color,  this.size});
  final double ?height,width;

  final Color ?backGroundColor;

  final VoidCallback ?onPressed ;

  final IconData icon;

  final Color? color;

  final double ?size;
  @override
  Widget build(BuildContext context) {
    
    return Container(
      height: height,
      width:width ,

      decoration: BoxDecoration(borderRadius: BorderRadius.circular(100.r),
          color:backGroundColor ),
      child: Center(child: IconButton(padding: EdgeInsets.zero,
          onPressed: onPressed, icon: Icon(icon,color:color ,size:size ,))),



    );
  }
}
