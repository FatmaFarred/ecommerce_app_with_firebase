import 'package:ecommerce_app_with_firebase/common/widgets/product_cart/product_card_vertical.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyGridViewLayout extends StatelessWidget {
  const MyGridViewLayout({
    super.key,
    required this.itemCount,
     this.mainAxisExtent,
     required this.itembuilder,
  });
  final int itemCount;
  final double? mainAxisExtent;
  final Widget? Function(BuildContext, int) itembuilder;


  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      //todo:add the list's length
        itemCount: itemCount,
        physics:const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        padding:EdgeInsets.zero ,
        gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount
          (crossAxisCount: 2,
          mainAxisExtent: mainAxisExtent??288.h,
          crossAxisSpacing: 16.w,
          mainAxisSpacing: 16.h,


        ),
        itemBuilder: itembuilder
    );
  }
}
