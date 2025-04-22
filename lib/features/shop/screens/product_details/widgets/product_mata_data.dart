import 'package:ecommerce_app_with_firebase/common/widgets/product_cart/brand_title_with_icon.dart';
import 'package:ecommerce_app_with_firebase/common/widgets/text/product_title.dart';
import 'package:ecommerce_app_with_firebase/core/constants/enums.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../common/widgets/circular_container.dart';
import '../../../../../common/widgets/image_rounded_container.dart';
import '../../../../../core/constants/assets_manager.dart';
import '../../../../../core/constants/color_manager.dart';
import '../../../../../core/helpers/helper_functions.dart';

class ProductMetaData extends StatelessWidget {
  const ProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunction.isDarkMode(context);
    return Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            CircularContainer(
              radius: 8.r,
              height: 25.h,
              width: 40.w,

              backGroundColor:ColorManager.yellow.withOpacity(0.8) ,
              padding: EdgeInsets.symmetric(vertical: 4.h,horizontal: 4.w),
              child: Text("24%",style: Theme.of(context).textTheme.labelSmall?.apply(color: ColorManager.black,),),



            ),
             SizedBox(width: 16.w,),
            MyProductTitle(title: "\$250", productTextSize: null,style: Theme.of(context).textTheme.bodyLarge!.apply(decoration: TextDecoration.lineThrough),),
            SizedBox(width: 16.w,),
            MyProductTitle(title: "\$175", productTextSize: null,style: Theme.of(context).textTheme.headlineMedium,),
          ],
        ),
        SizedBox(height: 10.h,),
        MyProductTitle(title: "Green Nike sports shoes ", productTextSize: TextSizees.small),
        SizedBox(height: 10.h,),
        Row(
          children: [
            MyProductTitle(title: "Status ", productTextSize: TextSizees.small),
            SizedBox(width: 16.w,),
            MyProductTitle(title: "In titleStock ", productTextSize: TextSizees.medium),


          ],
        ),
        SizedBox(height: 10.h,),

        Row(

          children: [
            ImageRoundedContainer(imageUrl: ImageAssets.productImage,width: 32.w,height: 32.h,),
            Expanded(child: BrandTitleWithIcon(title:"Nike" , productTextSize: TextSizees.medium, maxLines: 1,)),



          ],
        )








      ],

    );
  }
}
