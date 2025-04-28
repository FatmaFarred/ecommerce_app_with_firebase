import 'package:ecommerce_app_with_firebase/common/widgets/title_heading/title_heading.dart';
import 'package:ecommerce_app_with_firebase/core/constants/assets_manager.dart';
import 'package:ecommerce_app_with_firebase/features/authentication/screens/login/widgets/circular_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyBillingAddressSection extends StatelessWidget {
  const MyBillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      MyTitleHeading(title: "Shipping Address",buttonTitle: "Change",style: Theme.of(context).textTheme.bodyLarge,),
      Text("Fatma Farred"),
      SizedBox(height: 8.h,),
      Row(
        children: [
          Icon(Icons.phone,color: Colors.grey,size: 16.h,),
          SizedBox(width: 16.w,),
          Text("+20-01277154413",style: Theme.of(context).textTheme.bodyMedium,)

        ],
      ),
      SizedBox(height: 8.h,),
      Row(
        children: [
          Icon(Icons.location_history,color: Colors.grey,size: 16.h,),
          SizedBox(width: 16.w,),
          Text("Alexandria,17368 west,Egypt",style: Theme.of(context).textTheme.bodyMedium,)

        ],
      ),

    ],);
  }
}
