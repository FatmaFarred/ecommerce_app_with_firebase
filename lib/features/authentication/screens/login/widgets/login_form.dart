import 'package:ecommerce_app_with_firebase/features/authentication/screens/password_configration/forgrt_password_screen.dart';
import 'package:ecommerce_app_with_firebase/features/authentication/screens/register/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_app_with_firebase/core/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../core/constants/assets_manager.dart';
import '../../../../../core/constants/color_manager.dart';
import '../../../../../core/constants/font_manager/font_style_manager.dart';
import '../../../../../core/customized_widgets/reusable_widgets/custom_text_field.dart';
import '../../../../../core/customized_widgets/reusable_widgets/customized_elevated_button.dart';
import '../../../../../core/customized_widgets/reusable_widgets/text_botton.dart';
import '../../../../../core/validators/my_validator.dart';
import 'circular_container.dart';

class LoginForm extends StatefulWidget {

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool showPassword = false;

  void togglePasswordVisibility() {
    setState(() {
      showPassword = !showPassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    final dark= MyHelperFunction.isDarkMode(context);

    return  Form(child: Column(children: [
    CustomTextField(

    keyboardType: TextInputType.emailAddress,
    textInputAction: TextInputAction.next,
    prefixIcon: Icon(Iconsax.direct_right),
    hintText: "email",
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
    SizedBox(height: 16.h,),
    CustomTextField(

    keyboardType: TextInputType.visiblePassword,
    textInputAction: TextInputAction.done,
    prefixIcon: Icon(Iconsax.password_check),
    hintText: "password",
  obscureText: !showPassword,
  suffixIcon: IconButton(
  onPressed: togglePasswordVisibility,
  icon: Icon(
  showPassword
  ? Icons.visibility
      : Icons.visibility_off,
  ),
  ),
  //controller: loginViewModel.passwordController,
  validator: (text) {
  if (text == null || text.isEmpty) {
  return "password is empty";
  }
  if (!MyAppValidators.isValidPassword(text)) {
  return "invalid Password";
  }
  if (text.length < 8) {
  return "passwordTooShort";
  }
  return null;
  },
  ),
  SizedBox(height: 16.h,),

  Row(
  children: [
  ///remember me & chnage password
  Checkbox(
  value: true, onChanged: (value){}),
  SizedBox(height: 7.w,),

  const Text("remember me "),
  Spacer(),
  MyTextButton(onBottonClick: ()=>  Get.toNamed(ForgrtPasswordScreen.forgrtPasswordScreenRoueName), buttonWidegt: Text("Forget Password?",)),

  ],),
  SizedBox(height: 16.h,),
  CustomizedElevatedButton(color: ColorManager.purple,
  borderColor: ColorManager.purple,
  bottonWidget: Text ("Sign in",style: getSemiBoldStyle(color: ColorManager.white),)),
  SizedBox(height: 16.h,),

  CustomizedElevatedButton(
  color: ColorManager.transparent,
  borderColor: ColorManager.purple,
      onPressed: () => Get.toNamed(RegisterScreen.RegisterScreenRoueName),
  bottonWidget: Text ("Create Account",
    style: Theme.of(context).textTheme.bodyLarge,)
  ),
  SizedBox(height: 32.h,),










  ],));
  }
}


