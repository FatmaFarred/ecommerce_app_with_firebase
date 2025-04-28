import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../common/widgets/product_cart/proctuct_quantity_add_remove_button.dart';
import '../../../../../common/widgets/text/product_title.dart';
import '../../../../../core/constants/enums.dart';
import 'cart_item.dart';

class MyWholeCartItem extends StatelessWidget {
  const MyWholeCartItem({
    super.key,  this.showAddRemoveButtons=true,
  });
  final bool showAddRemoveButtons;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      MyCartItem(),
      if (showAddRemoveButtons)SizedBox(height:16.h ,),

      if (showAddRemoveButtons)Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(children: [
            SizedBox(width:70.w ,),
            MyProductQuantityAddAndRemoveButton(),
          ],),
          MyProductTitle(title: "\$265", productTextSize: TextSizees.medium)
        ],),


    ],);
  }
}
