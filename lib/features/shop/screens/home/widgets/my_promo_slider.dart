import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce_app_with_firebase/features/shop/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../../common/widgets/circular_container.dart';
import '../../../../../common/widgets/image_rounded_container.dart';
import '../../../../../core/constants/assets_manager.dart';
import '../../../../../core/constants/color_manager.dart';

class MyPromoSlider extends StatelessWidget {
   MyPromoSlider({
    super.key,
  });
  final List<String> adsImages = [
    ImageAssets.carouselSlider1,
    ImageAssets.carouselSlider2,
    ImageAssets.carouselSlider3,
  ];

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(

      children: [
        CarouselSlider(items: adsImages.map((image)=>Obx(()=> ImageRoundedContainer(imageUrl: adsImages[controller.carousalCurrentIndex.value],padding: EdgeInsets.all(8.w),)),).toList(),
            options: CarouselOptions(viewportFraction:1,
              autoPlay: true,
              onPageChanged: (index,_)=>controller.updatePageIndicator(index)

            )
        ),
        SizedBox(height: 16.h,),
        Center(
          child: Obx(
              ()=>Row(
                mainAxisSize: MainAxisSize.min,
              children: [
                for (int i =0 ; i<3 ;i++)  CircularContainer(height: 4.h,width: 20.w,backGroundColor: controller.carousalCurrentIndex==i?ColorManager.purple:ColorManager.grey,
                  margin: EdgeInsets.symmetric(horizontal: 5.w,vertical: 5.h),)


              ],
            ),
          ),
        )
      ],
    );
  }
}
