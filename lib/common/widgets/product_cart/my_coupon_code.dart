import 'package:ecommerce_app_with_firebase/common/widgets/circular_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constants/color_manager.dart';
import '../../../core/customized_widgets/reusable_widgets/custom_text_field.dart';
import '../../../core/customized_widgets/reusable_widgets/customized_elevated_button.dart';
import '../../../core/helpers/helper_functions.dart';

class MyCouponCode extends StatelessWidget {
  const MyCouponCode({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final dark= MyHelperFunction.isDarkMode(context);

    return CircularContainer(
      border: Border.all(
        color: dark?ColorManager.darkGrey:ColorManager.lightGrey,
      ),
      backGroundColor: ColorManager.transparent,
      padding: EdgeInsets.only(bottom: 16.h,top: 16.h,right:8.w),
      radius: 16.r,
      child:Row(children: [
        Flexible(
          child: CustomTextField(
            showBorder: false,
            hintText: "Have a promo code? enter Here ",
            textstyle: Theme.of(context).textTheme.labelSmall,
          ),

        ),
        CustomizedElevatedButton(bottonWidget: Text("Apply",style: Theme.of(context).textTheme.bodyMedium!.apply(color: ColorManager.white)),borderColor:ColorManager.purple ,color: ColorManager.purple,)

      ],),
    );
  }
}
