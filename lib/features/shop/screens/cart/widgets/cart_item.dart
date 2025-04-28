import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../common/widgets/image_rounded_container.dart';
import '../../../../../common/widgets/product_cart/brand_title_with_icon.dart';
import '../../../../../common/widgets/text/product_title.dart';
import '../../../../../core/constants/assets_manager.dart';
import '../../../../../core/constants/color_manager.dart';
import '../../../../../core/constants/enums.dart';
import '../../../../../core/helpers/helper_functions.dart';

class MyCartItem extends StatelessWidget {
  const MyCartItem({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final dark= MyHelperFunction.isDarkMode(context);

    return Row(children: [
      ///image
      ImageRoundedContainer(imageUrl: ImageAssets.productImage2,
          height: 60.h,
          width:60.w ,
          padding: EdgeInsets.all(8.h),
          backGroundColor:dark?ColorManager.darkGrey:ColorManager.containerGray

      ),
      SizedBox(width: 18.w,),
      ///title,price & size

      Expanded(child:

      Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BrandTitleWithIcon(title: "Nike", maxLines: 1, productTextSize: TextSizees.small),
          MyProductTitle(title: "Green Sport shoes", productTextSize: TextSizees.medium),

          ///Attributes
          Text.rich(TextSpan(children: [
            TextSpan(text: "Color ",style:Theme.of(context).textTheme.labelSmall ),
            TextSpan(text: "Green ",style:Theme.of(context).textTheme.bodyLarge ),
            TextSpan(text: "Size ",style:Theme.of(context).textTheme.labelSmall ),
            TextSpan(text: "Uk 08 ",style:Theme.of(context).textTheme.bodyLarge ),

          ]))

        ],)),



    ],);
  }
}
