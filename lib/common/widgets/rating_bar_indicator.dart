import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';

import '../../core/constants/color_manager.dart';

class MyRatingBarIndicator extends StatelessWidget {
  final double rating;

  const MyRatingBarIndicator({
    super.key, required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
        itemSize: 20.h,
        rating: rating,
        unratedColor: ColorManager.lightGrey,
        itemBuilder: (_,__)=>Icon(Iconsax.star1,color: ColorManager.purple,));
  }
}
