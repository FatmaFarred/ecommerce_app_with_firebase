import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/constants/color_manager.dart';
import '../../core/helpers/helper_functions.dart';

class MyCategoryWidget extends StatelessWidget {
  const MyCategoryWidget({
    super.key, required this.imagePath,
    required this.title,
    required this.onPressed,
    this.titleColor ,
    this.backGroudColor,
  });
  final String imagePath,title;
  final void Function()? onPressed;
  final Color? titleColor;
  final Color? backGroudColor;



  @override
  Widget build(BuildContext context) {
    final dark= MyHelperFunction.isDarkMode(context);

    return GestureDetector(
      onTap: onPressed,
      child: Column(children: [
        Container(
          height: 56.h,
          width: 56.w,
          margin: EdgeInsets.only(right:8.w),
          padding: EdgeInsets.all(8.w),
          decoration: BoxDecoration(
            color: backGroudColor?? (dark? ColorManager.black:ColorManager.white),
            borderRadius: BorderRadius.circular(56.r),
          ),
          child: Center(child: Image.asset(imagePath,
            fit: BoxFit.cover,
            //color: dark? ColorManager.white:ColorManager.black,
          ),),
        ),
        SizedBox( width:55.w,
          child: Text(title,
            style: Theme.of(context).textTheme.labelMedium?.apply(color:titleColor??ColorManager.white),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        )
      ],

      ),
    );
  }
}
