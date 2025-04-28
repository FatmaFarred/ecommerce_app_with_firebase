import 'package:ecommerce_app_with_firebase/common/styles/spacing_styles.dart';
import 'package:ecommerce_app_with_firebase/core/constants/assets_manager.dart';
import 'package:ecommerce_app_with_firebase/core/constants/font_manager/font_style_manager.dart';
import 'package:ecommerce_app_with_firebase/features/authentication/screens/login/login_screen.dart';
import 'package:ecommerce_app_with_firebase/features/authentication/screens/verify_email/verification_widgets/verfication_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/color_manager.dart';
import '../../../../core/customized_widgets/reusable_widgets/customized_elevated_button.dart';
import '../../../../core/helpers/helper_functions.dart';
import 'package:get/get.dart';



class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key, required this.title, required this.subTitle, required this.imagePath, this.onPressed});
  static String successScreenRoueName="SuccessScreen";
  final String title,subTitle,imagePath;
  final VoidCallback? onPressed;



  @override
  Widget build(BuildContext context) {
    final dark= MyHelperFunction.isDarkMode(context);

    return Scaffold(

      body: SingleChildScrollView(
        child: Padding(padding: MySpacingStyle.paddingWithAppBarHeight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              VerficationWidget(text: title,
                imagePath: imagePath, subText: "",height: 300.h,
                subText2:subTitle,
              ),
              SizedBox(height: 32.h,),
              CustomizedElevatedButton(
                  color: ColorManager.purple,
                  borderColor: ColorManager.purple,

                  onPressed: onPressed,
                  bottonWidget: Text ("Continue",
                      style: getSemiBoldStyle(color: ColorManager.white,fontSize: 14))
              ),
              SizedBox(height: 16.h,),






            ],),

        )
        ,),

    );
  }
}
