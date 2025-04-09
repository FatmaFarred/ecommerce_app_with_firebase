import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constants/assets_manager.dart';
import '../../../../../core/constants/color_manager.dart';
import 'circular_container.dart';

class LoginFooter extends StatelessWidget {
  const LoginFooter({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(child: Divider(color: dark? ColorManager.darkGrey:ColorManager.grey1,thickness: 0.5,indent: 60.w,endIndent:5.w ,)),
          Text ("Or sign in with",style: Theme.of(context).textTheme.labelMedium,),
          Flexible(child: Divider(color: dark? ColorManager.darkGrey:ColorManager.grey1,thickness: 0.5,indent: 5.w,endIndent:60.w ,)),

        ],
      ),
      SizedBox(height: 32.h,),

      ///footer
      Row(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircularContainer(imagePath:ImageAssets.googlelogo ,),
          SizedBox(width: 16.w,),

          CircularContainer(imagePath:ImageAssets.facelogo ,),


        ],)
    ],);
  }
}