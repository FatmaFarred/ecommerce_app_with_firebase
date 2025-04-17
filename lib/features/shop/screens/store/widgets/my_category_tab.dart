import 'package:ecommerce_app_with_firebase/common/widgets/gridview_layout.dart';
import 'package:ecommerce_app_with_firebase/common/widgets/product_cart/product_card_vertical.dart';
import 'package:ecommerce_app_with_firebase/common/widgets/title_heading/title_heading.dart';
import 'package:ecommerce_app_with_firebase/core/constants/enums.dart';
import 'package:ecommerce_app_with_firebase/features/shop/screens/store/widgets/brand_show_case.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constants/assets_manager.dart';

class MyCategoryTab extends StatelessWidget {
  const MyCategoryTab({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      children: [Padding(padding: EdgeInsets.all(16.w),
        child: Column(children: [
          MyBrandShowCase(dark: dark,imagelist: [ImageAssets.productImage,ImageAssets.productImage,ImageAssets.productImage],),
          MyBrandShowCase(dark: dark,imagelist: [ImageAssets.productImage,ImageAssets.productImage,ImageAssets.productImage],),

          SizedBox(height: 16.h,),
      
          MyTitleHeading(title: "You might like",onButtonClick:(){} ,productTextSize: TextSizees.medium,),
          SizedBox(height: 16.h,),
          MyGridViewLayout(itemCount: 4, itembuilder: (_,index)=>MyProductCardVertical())
        ],),
      
      ),
    ]
    );
  }
}
