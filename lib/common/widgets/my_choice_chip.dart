import 'package:ecommerce_app_with_firebase/common/widgets/circular_container.dart';
import 'package:ecommerce_app_with_firebase/core/constants/color_manager.dart';
import 'package:ecommerce_app_with_firebase/core/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyChoiceChip extends StatelessWidget {
  const MyChoiceChip({super.key, required this.text, required this.selected, this.onSelected});
  final String text;
 final bool selected;
 final void Function(bool)? onSelected;
  @override
  Widget build(BuildContext context) {
    final isColor=MyHelperFunction.getColor(text)!=null;
    return ChoiceChip(label: isColor?SizedBox():Text(text),
        selected: selected,
      backgroundColor: isColor?MyHelperFunction.getColor(text):null,
      onSelected: onSelected,
      shape:isColor? const CircleBorder():null,
      padding: isColor?EdgeInsets.zero:null,
      labelStyle: TextStyle(color: selected?ColorManager.white:null),
      avatar: isColor?CircularContainer(height: 50.h,width: 50.w,backGroundColor: MyHelperFunction.getColor(text)!):null,
      labelPadding:isColor?EdgeInsets.zero:null ,





    );
  }
}
