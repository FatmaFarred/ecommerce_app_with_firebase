import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../common/widgets/circular_container.dart';
import '../../../../../common/widgets/image_circular_container.dart';
import '../../../../../common/widgets/product_cart/brand_title_with_icon.dart';
import '../../../../../common/widgets/text/product_title.dart';
import '../../../../../core/constants/assets_manager.dart';
import '../../../../../core/constants/color_manager.dart';
import '../../../../../core/constants/enums.dart';

class MyBrandContainer extends StatelessWidget {
  const MyBrandContainer({
    super.key,
    required this.dark, this.borderColor,  this.onPressed,
  });

  final bool dark;
  final Color? borderColor;
  final VoidCallback ?onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: CircularContainer(
        radius: 16.r,
        padding: EdgeInsets.all(8.w),
        border: Border.all(color:borderColor??(dark?ColorManager.grey:ColorManager.grey2) ),
        backGroundColor: ColorManager.transparent,
        child: Row(
          children: [
            Flexible(child: MyCircularImageContainer(imagePath: ImageAssets.brandHomeImage,)),
            SizedBox(width: 12.w,),
            ///text
            Expanded(
              child: Column(crossAxisAlignment:CrossAxisAlignment.start ,
                mainAxisSize: MainAxisSize.min,
                children: [
                  BrandTitleWithIcon(title: "Nike", maxLines: 1, productTextSize: TextSizees.medium,),
                  MyProductTitle(title: "265 products ", productTextSize: TextSizees.small,maxLines: 1, )
                ],
              ),
            ),


          ],
        ),
      ),
    );
  }
}
