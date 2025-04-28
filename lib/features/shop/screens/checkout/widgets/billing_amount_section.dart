import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyBillingAmountSection extends StatelessWidget {
  const MyBillingAmountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Subtotal",style: Theme.of(context).textTheme.bodyMedium),
          Text("\$256",style: Theme.of(context).textTheme.bodyMedium),

        ],),
      SizedBox(height: 8.h,),
      ///shipping fees
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Shipping Fee",style: Theme.of(context).textTheme.bodyMedium),
          Text("\$20",style: Theme.of(context).textTheme.bodyMedium),

        ],),
      SizedBox(height: 8.h,),
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Order Total",style: Theme.of(context).textTheme.bodyMedium),
          Text("\$276",style: Theme.of(context).textTheme.bodyLarge),

        ],),


    ],);
  }
}
