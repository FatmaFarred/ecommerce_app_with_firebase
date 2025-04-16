import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constants/color_manager.dart';
import '../../../core/helpers/helper_functions.dart';

class ImageRoundedContainer extends StatelessWidget {
  const ImageRoundedContainer({
    super.key, this.width,
    this.height, required this.imageUrl,
    this.applyImageRadius=false,
    this.border,
    this.backGroundColor,
    this.fit,
    this.padding,
    this.isNetworkImage=false,
    this.onPressed,
    this.radius,
  });
  final double? width,height;
  final String imageUrl;
  final bool applyImageRadius;
  final BoxBorder? border;
  final Color? backGroundColor;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final bool isNetworkImage;
  final VoidCallback? onPressed;
  final double ?radius;




  @override
  Widget build(BuildContext context) {
    final dark= MyHelperFunction.isDarkMode(context);

    return GestureDetector(
      onTap:onPressed ,
      child: Container(padding:padding,
        width: width,
        height: height,

        decoration: BoxDecoration(borderRadius:BorderRadius.circular(radius??16.r),

            border: border,
            color: backGroundColor??(dark?ColorManager.black:ColorManager.white),

        ),
        child: ClipRRect(
          borderRadius: applyImageRadius?BorderRadius.circular(radius??16.r):BorderRadius.circular(0),
          child:Image(image: isNetworkImage?NetworkImage(imageUrl):AssetImage(imageUrl)as ImageProvider,

            fit: fit,
          ) ,

        ),

      )
    );
  }
}
