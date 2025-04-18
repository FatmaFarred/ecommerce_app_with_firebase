import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/image_rounded_container.dart';
import '../../../../../core/constants/assets_manager.dart';
import '../../../../../core/constants/color_manager.dart';

class MyUserProfileTitle extends StatelessWidget {
  const MyUserProfileTitle({
    super.key, required this.onPressed,
  });
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ImageRoundedContainer(imageUrl: ImageAssets.carouselSlider1,height: 50.h,width: 50.w,padding: EdgeInsets.zero,applyImageRadius: true,radius: 50.r,fit: BoxFit.fill,),
      title: Text("Fatma Farred",
        style: Theme.of(context).textTheme.headlineSmall!.apply(color: ColorManager.white),),
      subtitle:  Text("FatmaFarred@gmail.com",
        style: Theme.of(context).textTheme.labelMedium!.apply(color: ColorManager.white),),
      trailing: IconButton(onPressed: onPressed, icon: Icon(Iconsax.edit,color: ColorManager.white,)),

    );
  }
}
