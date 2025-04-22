import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../core/constants/color_manager.dart';

class MyRatingAndShare extends StatelessWidget {
  const MyRatingAndShare({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Icon(Iconsax.star5,color: ColorManager.starRateColor,size: 24.h,),
      SizedBox(width: 8.w,),
      Text.rich(TextSpan(children: [
        TextSpan(text: "0.5",style: Theme.of(context).textTheme.bodyLarge),
        const TextSpan(text: "(199)"),


      ])),
      Spacer(),
      IconButton(onPressed: (){}, icon: Icon(Icons.share ))

    ],);
  }
}
