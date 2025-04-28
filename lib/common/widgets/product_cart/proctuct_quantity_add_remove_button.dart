import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';

import '../../../core/constants/color_manager.dart';
import '../../../core/helpers/helper_functions.dart';
import '../circular_conatiner_icon.dart';

class MyProductQuantityAddAndRemoveButton extends StatelessWidget {
  const MyProductQuantityAddAndRemoveButton({
    super.key,
  });



  @override
  Widget build(BuildContext context) {
    final dark= MyHelperFunction.isDarkMode(context);

    return Row(mainAxisSize:MainAxisSize.min,
      children: [
        CircularConatinerIcon(icon: Iconsax.minus,backGroundColor: dark?ColorManager.darkGrey:ColorManager.containerGray,height: 32.h,width: 32.w,color: Theme.of(context).indicatorColor,),
        SizedBox(width:16.w ,),
        Text("2",style: Theme.of(context).textTheme.titleSmall,),
        SizedBox(width:16.w ,),

        CircularConatinerIcon(icon: Iconsax.add,backGroundColor: ColorManager.purple,height: 32.h,width: 32.w,color: ColorManager.white,),
      ],);
  }
}
