import 'package:ecommerce_app_with_firebase/common/widgets/image_rounded_container.dart';
import 'package:ecommerce_app_with_firebase/common/widgets/title_heading/title_heading.dart';
import 'package:ecommerce_app_with_firebase/core/constants/assets_manager.dart';
import 'package:ecommerce_app_with_firebase/core/constants/enums.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../common/widgets/custom_appbar/custom_appbar.dart';
import '../../../../common/widgets/product_cart/product_card_horizental.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});
  static String routeName="SubCategoriesScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyCustomAppbar(title: Text("Sports"),showLeadingIcon: true,),
      body:SingleChildScrollView(padding: EdgeInsets.all(24.w),
        child: Column(children: [
          ///banners
          ImageRoundedContainer(imageUrl:ImageAssets.carouselSlider2,
          width: double.infinity,
            radius: 16.r,
          ),
          SizedBox(height: 32.h,),
          Column(children: [
            ///heading
            MyTitleHeading(title: "Sports shirts ",productTextSize: TextSizees.medium,),
            SizedBox(height: 8.h,),
            SizedBox(height: 120.h,
              child: ListView.separated(separatorBuilder: (_,__)=>SizedBox(width: 16.w,),
                  itemCount: 4,
                  scrollDirection: Axis.horizontal,
                  itemBuilder:(_,index) =>MyProductCardHorizental()),
            )



          ],)
        ],),
      ) ,

    );
  }
}
