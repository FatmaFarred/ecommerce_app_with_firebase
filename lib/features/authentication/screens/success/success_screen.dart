import 'package:ecommerce_app_with_firebase/common/styles/spacing_styles.dart';
import 'package:ecommerce_app_with_firebase/core/constants/assets_manager.dart';
import 'package:ecommerce_app_with_firebase/core/constants/font_manager/font_style_manager.dart';
import 'package:ecommerce_app_with_firebase/core/customized_widgets/reusable_widgets/text_botton.dart';
import 'package:ecommerce_app_with_firebase/features/authentication/screens/login/login_screen.dart';
import 'package:ecommerce_app_with_firebase/features/authentication/screens/register/register_widget/register_footer.dart';
import 'package:ecommerce_app_with_firebase/features/authentication/screens/register/register_widget/register_form.dart';
import 'package:ecommerce_app_with_firebase/features/authentication/screens/verify_email/verification_widgets/verfication_widget.dart';
import 'package:ecommerce_app_with_firebase/features/on_boarding/onboarding_page_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/color_manager.dart';
import '../../../../core/customized_widgets/reusable_widgets/customized_elevated_button.dart';
import '../../../../core/helpers/helper_functions.dart';
import 'package:get/get.dart';



class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});
  static String successScreenRoueName="SuccessScreen";


  @override
  Widget build(BuildContext context) {
    final dark= MyHelperFunction.isDarkMode(context);

    return Scaffold(

      body: SingleChildScrollView(
        child: Padding(padding: MySpacingStyle.paddingWithAppBarHeight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              VerficationWidget(text: "Your account successfully created!",
                imagePath: LottieAssets.successful, subText: "",height: 300.h,
                subText2:"Welcome to Your ultimate shopping destination , Your account is created unleash the joy of seamless online shopping",
              ),
              SizedBox(height: 32.h,),
              CustomizedElevatedButton(
                  color: ColorManager.purple,
                  borderColor: ColorManager.purple,

                  onPressed: ()=>Get.toNamed(LoginScreen.loginScreenRoueName),
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
