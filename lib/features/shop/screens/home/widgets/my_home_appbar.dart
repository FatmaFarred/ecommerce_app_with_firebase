import 'package:flutter/material.dart';

import '../../../../../common/widgets/custom_appbar/custom_appbar.dart';
import '../../../../../common/widgets/product_cart/cart_counter.dart';
import '../../../../../core/constants/color_manager.dart';

class MyHomeAppBar extends StatelessWidget {
  const MyHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MyCustomAppbar(title: Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Good day for shopping",style: Theme.of(context).textTheme.labelMedium!.apply(color: ColorManager.grey),),
        Text("Fatma Farred",style: Theme.of(context).textTheme.headlineSmall!.apply(color: ColorManager.white),),

      ],),
      actions: [
        MyCartCounter()
      ],

    );
  }
}
