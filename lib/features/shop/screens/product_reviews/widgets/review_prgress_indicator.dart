import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constants/color_manager.dart';
import '../../../../../core/device/device_utility.dart';

class MyRatingCircularIndicator extends StatelessWidget {
  const MyRatingCircularIndicator({
    super.key, required this.text, required this.value,
  });
  final String text;
  final double value;


  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(flex: 1,child: Text(text,style: Theme.of(context).textTheme.bodyMedium,)),
      Expanded(flex: 11,
        child: SizedBox(width: MyDeviceUtility.getScreenWidth(context)*0.8,
          child: LinearProgressIndicator(
            value:value,
            minHeight: 11.h,
            backgroundColor: ColorManager.lightGrey,
            valueColor: AlwaysStoppedAnimation(ColorManager.purple),
            borderRadius: BorderRadius.circular(7.r),

          ),
        ),
      )

    ],);
  }
}
