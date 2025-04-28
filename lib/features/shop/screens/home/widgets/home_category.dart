import 'package:ecommerce_app_with_firebase/features/shop/screens/sub_categories/sub_categories.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../../common/widgets/category_widget.dart';
import '../../../../../core/constants/assets_manager.dart';

class HomeCategory extends StatelessWidget {
  const HomeCategory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 80.h,
        child: ListView.builder( itemCount: 10,
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.only(right: 16.w),
          shrinkWrap: true,
          itemBuilder: (_,index){
            return  MyCategoryWidget(title: "Shoes category",onPressed: ()=>Get.toNamed(SubCategoriesScreen.routeName),
              imagePath: ImageAssets.carouselSlider1,

            );

          },
        ));
  }
}
