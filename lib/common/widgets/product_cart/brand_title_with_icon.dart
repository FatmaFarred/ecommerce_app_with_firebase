import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';

import '../../../core/constants/enums.dart';
import '../text/product_title.dart';

class BrandTitleWithIcon extends StatelessWidget {
  const BrandTitleWithIcon({
    super.key,
    required this.title,
    required this.maxLines, required this.productTextSize, this.textColor,

  });
  final String title;
  final int maxLines;
  final TextSizees productTextSize;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(child: MyProductTitle(title:title ,maxLines: maxLines,productTextSize:productTextSize ,TextColor:textColor ,)),
        SizedBox(width: 4.w,),
        Icon(Iconsax.verify5,color: Colors.blue,size: 16.w,)
      ],
    );
  }
}
