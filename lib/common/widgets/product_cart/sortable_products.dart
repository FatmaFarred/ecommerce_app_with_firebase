import 'package:ecommerce_app_with_firebase/common/widgets/product_cart/product_card_vertical.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';

import '../../../core/constants/color_manager.dart';
import '../gridview_layout.dart';

class MySortableProducts extends StatelessWidget {
  const MySortableProducts({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      ///dropdown
      DropdownButtonFormField<String>(
        style: Theme.of(context).textTheme.bodyLarge,
        decoration: InputDecoration(prefixIcon: Icon(Iconsax.sort),border:OutlineInputBorder(borderRadius:BorderRadius.circular(16.r),
            borderSide: BorderSide(color: dark?ColorManager.darkGrey:ColorManager.lightGrey)
        ),
          enabledBorder: OutlineInputBorder(borderRadius:BorderRadius.circular(16.r),
              borderSide: BorderSide(color: dark?ColorManager.darkGrey:ColorManager.lightGrey)
          ),
          focusedBorder: OutlineInputBorder(borderRadius:BorderRadius.circular(16.r),
              borderSide: BorderSide(color: dark?ColorManager.darkGrey:ColorManager.lightGrey)
          ),

        ),
        onChanged: (value) {
          // Handle selection
        },
        items: ['Name', 'Higher price', 'Lower price', 'Sale', 'Newest', 'Popularity']
            .map((option) => DropdownMenuItem<String>(
          value: option,
          child: Text(option),
        ))
            .toList(),
      ),
      SizedBox(height: 32.h,),
      MyGridViewLayout(itemCount: 10, itembuilder: (_,index)=>MyProductCardVertical())


    ],);
  }
}
