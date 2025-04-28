import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constants/color_manager.dart';

class CircularContainer extends StatelessWidget {
   CircularContainer({super.key,
     this.showBorder=true,
     required this.imagePath
  });
  String imagePath;
  bool showBorder;

  @override
  Widget build(BuildContext context) {
    return Container(decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(100) ,
      border: Border.all(color:showBorder? ColorManager.purple:ColorManager.transparent)),
      child: IconButton(onPressed:(){}, icon: Image(
          height: 30.h,width: 30.w,
          image: AssetImage(imagePath)
      )),
    );
  }
}
