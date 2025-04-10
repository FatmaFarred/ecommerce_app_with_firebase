import 'package:ecommerce_app_with_firebase/common/styles/spacing_styles.dart';
import 'package:ecommerce_app_with_firebase/core/helpers/helper_functions.dart';
import 'package:ecommerce_app_with_firebase/features/authentication/screens/login/widgets/login_form.dart';
import 'package:ecommerce_app_with_firebase/features/authentication/screens/password_configration/reset_password.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../core/constants/color_manager.dart';
import '../../../../core/constants/font_manager/font_style_manager.dart' show getSemiBoldStyle;
import '../../../../core/customized_widgets/reusable_widgets/custom_text_field.dart';
import '../../../../core/customized_widgets/reusable_widgets/customized_elevated_button.dart';
import '../../../../core/validators/my_validator.dart';




class ForgrtPasswordScreen extends StatefulWidget {
  const ForgrtPasswordScreen({super.key});
  static String forgrtPasswordScreenRoueName="ForgrtPasswordScreen";

  @override
  State<ForgrtPasswordScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<ForgrtPasswordScreen> {


  @override
  Widget build(BuildContext context) {
    final dark= MyHelperFunction.isDarkMode(context);

    return  Scaffold(
      appBar: AppBar(),
        body:SingleChildScrollView(
          child: Padding(padding: EdgeInsets.all(24.w),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              ///headers
                  Text("Forget password",style: Theme.of(context).textTheme.headlineMedium,),
                SizedBox(height: 16.h,),
                Text("Don't worry sometimes people can forget too, enter your email and we will send you a password resend link",style: Theme.of(context).textTheme.labelMedium,),
                SizedBox(height: 64.h,),

                CustomTextField(

                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  prefixIcon: Icon(Iconsax.direct_right),
                  hintText: "E-Mail",
                  //controller: loginViewModel.emailController,
                  validator: (text) {
                    if (text == null || text.isEmpty) {
                      return "email is empty";
                    }
                    if (!MyAppValidators.isValidEmail(text)) {
                      return "invalidEmail";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 32.h,),
                CustomizedElevatedButton(color: ColorManager.purple,
                   onPressed: ()=>Get.toNamed(ResetPasswordScreen.resetPasswordScreenRoueName) ,
                    borderColor: ColorManager.purple,
                    bottonWidget: Text ("Submit",style: getSemiBoldStyle(color: ColorManager.white),)),








              ],),
          ),
        )

    );


  }
}


