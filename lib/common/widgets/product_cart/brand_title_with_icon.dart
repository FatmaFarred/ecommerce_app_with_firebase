import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';

import '../text/product_title.dart';

class BrandTitleWithIcon extends StatelessWidget {
  const BrandTitleWithIcon({
    super.key,
    required this.title,
    required this.smallSize,
    required this.maxLines,
  });
  final String title;
  final bool smallSize;
  final int maxLines;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(child: MyProductTitle(title:title,smallSize:smallSize ,maxLines: maxLines,)),
        SizedBox(width: 4.w,),
        Icon(Iconsax.verify5,color: Colors.blue,size: 16.w,)
      ],
    );
  }
}
