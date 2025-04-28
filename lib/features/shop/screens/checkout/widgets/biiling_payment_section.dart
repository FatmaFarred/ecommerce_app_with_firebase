import 'package:ecommerce_app_with_firebase/common/widgets/title_heading/title_heading.dart';
import 'package:ecommerce_app_with_firebase/core/constants/assets_manager.dart';
import 'package:ecommerce_app_with_firebase/features/authentication/screens/login/widgets/circular_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyBillingPaymentSection extends StatelessWidget {
  const MyBillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      MyTitleHeading(title: "Payment Method",buttonTitle: "Change",style: Theme.of(context).textTheme.bodyLarge,),
      SizedBox(height: 8.h,),
      Row(
        children: [
          CircularContainer(imagePath: ImageAssets.paypallogo,showBorder: false),
          SizedBox(width: 8.w,),
          Text("Paypal",style: Theme.of(context).textTheme.bodyMedium,)

        ],
      )

    ],);
  }
}
