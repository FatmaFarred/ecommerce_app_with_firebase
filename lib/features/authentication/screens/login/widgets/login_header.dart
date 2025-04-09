import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constants/assets_manager.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          height: 150.h,

          image: AssetImage(ImageAssets.shoppinglogo),


        ),
        SizedBox(height: 16.h,),

        Text("Welcome back ,", style: Theme
            .of(context)
            .textTheme
            .headlineMedium,),
        SizedBox(height: 8.h,),
        Text(
          "Discover limitless choices and unmatched convenience.", style: Theme
            .of(context)
            .textTheme
            .bodyMedium,),
        SizedBox(height: 32.h,),

      ],

    );
  }
}
