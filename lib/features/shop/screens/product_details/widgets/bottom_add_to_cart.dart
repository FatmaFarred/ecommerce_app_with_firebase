import 'package:ecommerce_app_with_firebase/common/widgets/circular_conatiner_icon.dart';
import 'package:ecommerce_app_with_firebase/core/constants/color_manager.dart';
import 'package:ecommerce_app_with_firebase/core/customized_widgets/reusable_widgets/customized_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../core/helpers/helper_functions.dart';

class MyBottomAddToCart extends StatelessWidget {
  const MyBottomAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunction.isDarkMode(context);

    return Container(
      padding: EdgeInsets.symmetric(vertical: 12.h,horizontal: 24.w),
      decoration: BoxDecoration(color:dark?ColorManager.darkGrey:ColorManager.white2,
      borderRadius: BorderRadius.only(topLeft: Radius.circular(24.r),topRight:Radius.circular(24.r) ),

      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
            CircularConatinerIcon(icon: Iconsax.minus,backGroundColor: ColorManager.grey,height: 40.h,width: 40.w,color: ColorManager.white,),
            SizedBox(width:16.w ,),
            Text("2",style: Theme.of(context).textTheme.titleSmall,),
              SizedBox(width:16.w ,),

              CircularConatinerIcon(icon: Iconsax.add,backGroundColor: ColorManager.black,height: 40.h,width: 40.w,color: ColorManager.white,),

          ],),
          CustomizedElevatedButton(color: ColorManager.black,borderColor:ColorManager.black ,
              bottonWidget: Text("Add to cart",style: Theme.of(context).textTheme.bodyLarge!.apply(color: ColorManager.white),))
        ],
      ),

    );
  }
}
