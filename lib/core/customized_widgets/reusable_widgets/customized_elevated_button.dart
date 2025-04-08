import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/color_manager.dart';
import '../../constants/font_manager/font_style_manager.dart';


class CustomizedElevatedButton extends StatelessWidget {
  Color? borderColor;
  Color? color;
  String text;
  Widget? prefixIcon;
  Widget? suffixIcon;
  TextStyle? textStyle;
  Function? onPressed;
  CustomizedElevatedButton(
      {super.key,
      this.borderColor,
      this.color,
      required this.text,
      this.textStyle,
      this.prefixIcon,
      this.suffixIcon,
      this.onPressed});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            elevation: 0,
            padding: EdgeInsets.all(16.w),
            shape: RoundedRectangleBorder(
                side: BorderSide(color: borderColor ?? ColorManager.darkBlue),
                borderRadius: BorderRadius.circular(15.r)),
            backgroundColor: color ??  ColorManager.darkBlue),
        onPressed: () {
          if (onPressed != null) {
            onPressed!();
          }
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (prefixIcon != null) ...[
              prefixIcon!,
              SizedBox(
                width: 10.w,
              )
            ],
            Text(
              text,
              style: textStyle ??
                  getSemiBoldStyle(

                      color: ColorManager.black),
            ),
            if (suffixIcon != null) ...[
              SizedBox(
                width: 10.w,
              ),
              suffixIcon!
            ]
          ],
        ));
  }
}
