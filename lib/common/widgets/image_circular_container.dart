import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/constants/color_manager.dart';
import '../../core/helpers/helper_functions.dart';

class MyCircularImageContainer extends StatelessWidget {
  const MyCircularImageContainer({
    super.key, this.fit,
    required this.imagePath,
    this.isNetWorkImage=false,
    this.overLayColor, this.backGroundColor,
    this.width,  this.height,  this.padding, this.margin,
  });

  final BoxFit? fit;
  final String imagePath;
  final bool isNetWorkImage ;
  final Color? overLayColor;
  final Color? backGroundColor;
  final double ?width,height,padding;
  final EdgeInsetsGeometry? margin;


  @override
  Widget build(BuildContext context) {
    final dark=MyHelperFunction.isDarkMode(context);

    return Container(
      height: height??56.h,
      width: width??56.w,
      margin:margin ,
      padding:EdgeInsets.all(padding??8.w) ,
      decoration: BoxDecoration(
        color:backGroundColor?? (dark?ColorManager.black:ColorManager.white) ,

      ),
      child: Center(child:Image(fit:fit,

        color:overLayColor??(dark?ColorManager.white:ColorManager.black ),
        image: isNetWorkImage?NetworkImage(imagePath):AssetImage(imagePath) as ImageProvider,),

      ) ,
    );
  }
}
