import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../features/shop/screens/cart/widgets/whole_cart_item.dart';

class MyListViewCartItem extends StatelessWidget {
  const MyListViewCartItem({
    super.key,  this.showAddRemoveButtons=true,
  });
   final bool showAddRemoveButtons;

  @override
  Widget build(BuildContext context) {
    return ListView.separated( separatorBuilder: (_,__)=>SizedBox(height: 32.h,),
      shrinkWrap:   true,
      itemCount: 2,
      itemBuilder: (_,index)=>MyWholeCartItem(showAddRemoveButtons:showAddRemoveButtons ,),);
  }
}
