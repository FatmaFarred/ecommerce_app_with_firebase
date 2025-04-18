import 'package:flutter/material.dart';
import 'package:ecommerce_app_with_firebase/core/helpers/helper_functions.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';
import 'package:get/get.dart';


import '../../../../../core/constants/color_manager.dart';
import '../../../../../core/constants/font_manager/font_style_manager.dart';
import '../../../../../core/customized_widgets/reusable_widgets/custom_text_field.dart';
import '../../../../../core/customized_widgets/reusable_widgets/customized_elevated_button.dart';
import '../../../../../core/validators/my_validator.dart';
import '../../verify_email/verification_screen.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});


  @override
  State<RegisterForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<RegisterForm> {
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
      SizedBox(height: 32.h,),
      Row(children: [
        Expanded(
          child: CustomTextField(

            keyboardType: TextInputType.name,
            textInputAction: TextInputAction.next,
            prefixIcon: Icon(Iconsax.user),
            hintText: "First Name",
            //controller: loginViewModel.emailController,
            validator: (text) {
              if (text == null || text.trim().isEmpty) {
                return "name is empyt";
              }
              if (text.length < 5) {
                return "name is too short";
              }
              if (!MyAppValidators.isValidName(text)) {
                return "In valid name";
              }
              return null;
            },
          ),
        ),
        SizedBox(width: 8.w,),
        Expanded(
          child: CustomTextField(

            keyboardType: TextInputType.name,
            textInputAction: TextInputAction.next,
            prefixIcon: Icon(Iconsax.user),
            hintText: "Last Name",
            //controller: loginViewModel.emailController,
            validator: (text) {
              if (text == null || text.trim().isEmpty) {
                return "name is empyt";
              }
              if (text.length < 5) {
                return "name is too short";
              }
              if (!MyAppValidators.isValidName(text)) {
                return "In valid name";
              }
              return null;
            },
          ),
        ),
      ],),
      SizedBox(height: 16.h,),
      CustomTextField(

        keyboardType: TextInputType.name,
        textInputAction: TextInputAction.next,
        prefixIcon: Icon(Iconsax.user),
        hintText: "User Name ",
        //controller: loginViewModel.emailController,
        validator: (text) {
          if (text == null || text.trim().isEmpty) {
            return "name is empyt";
          }
          if (text.length < 5) {
            return "name is too short";
          }
          if (!MyAppValidators.isValidName(text)) {
            return "In valid name";
          }
          return null;
        },
      ),
      SizedBox(height: 16.h,),
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
      SizedBox(height: 16.h,),
      CustomTextField(

        keyboardType: TextInputType.phone,
        textInputAction: TextInputAction.next,
        prefixIcon: Icon(Iconsax.call),
        hintText: "Phone Number",
        //controller: loginViewModel.emailController,
        validator: (text) {
          if (text == null || text.isEmpty) {
            return "phone is empty";
          }
          if (!MyAppValidators.isValidPhone(text)) {
            return "invalid phone ";
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
      SizedBox(height: 32.h,),

      Row(
        children: [
          ///checkbox
          SizedBox(
            width: 24.w,
            height: 24.h,
            child: Checkbox(
                value: true, onChanged: (value){}),
          ),
          SizedBox(width: 8.w,),

           Text.rich(
            TextSpan(children:[
             TextSpan(text: "I agree to ",style: Theme.of(context).textTheme.labelSmall!.apply(color: dark?ColorManager.grey1:ColorManager.black)),
              TextSpan(text: " privacy policy", style: Theme.of(context).textTheme.labelMedium!.apply(color: dark?ColorManager.white:ColorManager.purple,
              decoration: TextDecoration.underline,
                decorationColor: dark?ColorManager.white:ColorManager.purple

              )),
              TextSpan(text: " and ",style: Theme.of(context).textTheme.labelSmall!.apply(color: dark?ColorManager.grey1:ColorManager.black)),
              TextSpan(text: " terms of use", style: Theme.of(context).textTheme.labelMedium!.apply(color: dark?ColorManager.white:ColorManager.purple,
                  decoration: TextDecoration.underline,
                  decorationColor: dark?ColorManager.white:ColorManager.purple
              )),



            ] ),
          ),


        ],),
      SizedBox(height: 32.h,),
      CustomizedElevatedButton(color: ColorManager.purple,
          borderColor: ColorManager.purple,
          onPressed: () => Get.toNamed(VerificationScreen.verificationScreenRoueName),

          bottonWidget: Text ("Create Account",style: getSemiBoldStyle(color: ColorManager.white),)),
      SizedBox(height: 16.h,),

      SizedBox(height: 32.h,),










    ],));
  }
}


