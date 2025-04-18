import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/text/product_title.dart';
import '../../../../../core/constants/color_manager.dart';
import '../../../../../core/constants/enums.dart';

class MyProfileMenuWidget extends StatelessWidget {
  const MyProfileMenuWidget({
    super.key,
    required this.lable,
    required this.title,
    required this.onPressed,
    this.icon=Iconsax.arrow_right_34,
  });
  final String lable, title;
  final VoidCallback onPressed;
  final IconData? icon;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Padding(
        padding:  EdgeInsets.symmetric(vertical:9.h ),
        child: Row(
          children: [
            SizedBox( width: 120.w,
              child: MyProductTitle(
                title: lable,
                maxLines: 1,
                productTextSize: TextSizees.small,
                TextColor: ColorManager.grey,
              ),
            ),
            Expanded(
              child: MyProductTitle(
                title: title,
                productTextSize: TextSizees.medium,
                maxLines: 1,
              ),
            ),
            Icon(icon, size: 25.w),
          ],
        ),
      ),
    );
  }
}
