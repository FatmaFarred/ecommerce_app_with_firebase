import 'package:ecommerce_app_with_firebase/core/constants/assets_manager.dart';
import 'package:ecommerce_app_with_firebase/core/constants/font_manager/font_style_manager.dart';
import 'package:ecommerce_app_with_firebase/core/customized_widgets/reusable_widgets/text_botton.dart';
import 'package:ecommerce_app_with_firebase/features/authentication/screens/login/login_screen.dart';
import 'package:ecommerce_app_with_firebase/features/authentication/screens/success/success_screen.dart';
import 'package:ecommerce_app_with_firebase/features/authentication/screens/verify_email/verification_widgets/verfication_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/color_manager.dart';
import '../../../../core/customized_widgets/reusable_widgets/customized_elevated_button.dart';
import '../../../../core/helpers/helper_functions.dart';
import 'package:get/get.dart';



class VerificationScreen extends StatelessWidget {
  const VerificationScreen({super.key});
  static String verificationScreenRoueName="VerificationScreen";


  @override
  Widget build(BuildContext context) {
    final dark= MyHelperFunction.isDarkMode(context);

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
        IconButton(onPressed: ()=>Get.offAllNamed(LoginScreen.loginScreenRoueName), icon: Icon(CupertinoIcons.clear))
      ],),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(24.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              VerficationWidget(text: "Verify your email address!",
                imagePath: LottieAssets.verfication, subText: "FatmaFarred637@gmail.com",height: 300.h,
              subText2:"Congratulation! Your account awaits , Verify your email to start shopping and experience a world of unrivaled deals and personalized offers  ",
              ),
              SizedBox(height: 32.h,),
              CustomizedElevatedButton(
                  color: ColorManager.purple,
                  borderColor: ColorManager.purple,

                  onPressed: ()=>Get.toNamed(SuccessScreen.successScreenRoueName),                  bottonWidget: Text ("Continue",
                    style: getSemiBoldStyle(color: ColorManager.white,fontSize: 14))
              ),
              SizedBox(height: 16.h,),
              SizedBox(width: double.infinity,
                  child: MyTextButton(onBottonClick: (){}, buttonWidegt: Text("Resend Email",style:getRegularStyle(color: ColorManager.purple) ,)))
              





            ],),

        )
        ,),

    );
  }
}
