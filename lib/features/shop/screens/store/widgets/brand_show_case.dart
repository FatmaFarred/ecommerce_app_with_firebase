import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../common/widgets/circular_container.dart';
import '../../../../../common/widgets/image_rounded_container.dart';
import '../../../../../core/constants/color_manager.dart';
import 'brand_container.dart';

class MyBrandShowCase extends StatelessWidget {
  const MyBrandShowCase({
    super.key,
    required this.dark, required this.imagelist,
  });

  final bool dark;
  final List<String>imagelist;

  @override
  Widget build(BuildContext context) {
    return CircularContainer(
      width: double.infinity,
      radius: 16.r,
      height: 200.h,
      padding:EdgeInsets.all(8.w) ,
      border: Border.all(color: ColorManager.grey),
      backGroundColor: ColorManager.transparent,
      margin:EdgeInsets.only(bottom: 16.h),
      child: Column(
        children: [
          MyBrandContainer(dark: dark,borderColor: ColorManager.transparent,),
          Row(children: imagelist.map((image)=> brandTopProductImageWidget(image,context)).toList()
            

          ,)
        ],
      ),




    );
  }
  Widget brandTopProductImageWidget (String imagePath,context){
    return Expanded(
      child: ImageRoundedContainer(
        imageUrl: imagePath,
        padding:EdgeInsets.all(8.h) ,
        margin:EdgeInsets.only(right:8.w) ,
        height: 100.h,
        fit: BoxFit.contain,
        backGroundColor: dark?ColorManager.darkGrey:ColorManager.white,


      ),
    );
  }
}
