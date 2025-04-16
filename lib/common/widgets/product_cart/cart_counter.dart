import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';

import '../../../core/constants/color_manager.dart';

class MyCartCounter extends StatelessWidget {
  const MyCartCounter({
    super.key, this.iconColor, this.OnCartClick, this.counterstyle, this.containerColor,
  });
  final Color? iconColor;
  final VoidCallback? OnCartClick;
  final TextStyle? counterstyle;
  final Color? containerColor;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(onPressed: OnCartClick, icon:Icon(Iconsax.shopping_bag,color:iconColor??ColorManager.white ,)),
        Positioned(right: 0,
            child: Container(
              height: 18.h,
              width: 18.w,
              decoration: BoxDecoration(color:containerColor??ColorManager.black ,
                  borderRadius: BorderRadius.circular(18.r)),
              child: Center(child: Text("2",style:counterstyle?? Theme.of(context).textTheme.labelLarge!.apply(color: ColorManager.white,fontSizeFactor: 0.8))),
            ))
      ],
    );
  }
}
