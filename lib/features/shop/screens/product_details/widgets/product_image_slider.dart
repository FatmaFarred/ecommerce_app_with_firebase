import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/custom_appbar/custom_appbar.dart';
import '../../../../../common/widgets/custome_curve_edge_widget.dart';
import '../../../../../common/widgets/image_rounded_container.dart';
import '../../../../../core/constants/assets_manager.dart';
import '../../../../../core/constants/color_manager.dart';
import '../../../../../core/helpers/helper_functions.dart';

class MyProuctImageSlider extends StatelessWidget {
  const MyProuctImageSlider({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunction.isDarkMode(context);

    return CurvedEdgeWidegt(child: Container(

      color: dark?ColorManager.darkGrey:ColorManager.containerGray,
      child: Stack(children: [
        ///main large image
        SizedBox(
            height: 400.h,
            child: Padding(
              padding:  EdgeInsets.all(32.h),
              child: Center(child: Image(image: AssetImage(ImageAssets.productImage2))),
            )),
        ///image slider,
        Positioned(
          bottom: 30.h,
          right: 0,
          left: 16.w,
          child: SizedBox(
            height: 80.h,
            child: ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                physics: AlwaysScrollableScrollPhysics(),
                itemBuilder: (_,index)=>ImageRoundedContainer(imageUrl: ImageAssets.productImage2,
                  width: 80.w,
                  fit: BoxFit.contain,
                  backGroundColor:dark?ColorManager.black:ColorManager.white ,
                  applyImageRadius: true,
                  radius: 16.r,
                  border: Border.all(color: ColorManager.purple),
                  padding: EdgeInsets.all(8.w),

                ),
                separatorBuilder: (_,__)=>  SizedBox(width: 16.w,),
                itemCount: 6),
          ),
        ),
        /// Appbar
        MyCustomAppbar(
          showLeadingIcon: true,
          actions: [IconButton(onPressed:(){}, icon: Icon(Iconsax.heart5,color: ColorManager.error,))],
        )


      ],),
    ));
  }
}
