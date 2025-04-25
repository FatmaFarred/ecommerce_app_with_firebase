import 'package:ecommerce_app_with_firebase/core/theme/my_app_theme.dart';
import 'package:ecommerce_app_with_firebase/features/authentication/screens/login/login_screen.dart';
import 'package:ecommerce_app_with_firebase/features/authentication/screens/success/success_screen.dart';
import 'package:ecommerce_app_with_firebase/features/on_boarding/onboarding.dart';
import 'package:ecommerce_app_with_firebase/features/personalization/bottom_navigation/bottom_navigation_bar_menu.dart';
import 'package:ecommerce_app_with_firebase/features/personalization/screens/profile/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'features/authentication/screens/password_configration/forgrt_password_screen.dart';
import 'features/authentication/screens/password_configration/reset_password.dart';
import 'features/authentication/screens/register/register_screen.dart';
import 'features/authentication/screens/verify_email/verification_screen.dart';
import 'features/shop/screens/product_details/product_details_screen.dart';
import 'features/shop/screens/product_reviews/product_reviews.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(430, 932),
    minTextAdapt: true,
    splitScreenMode: true,
    builder: (context, child) =>GetMaterialApp (
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode. system,
      theme: MyAppTheme.lightTheme,
      darkTheme: MyAppTheme.darkTheme,
      initialRoute: OnBoarding.OnBoardingRouteName,
      routes:{OnBoarding.OnBoardingRouteName:(context)=>OnBoarding(),
      LoginScreen.loginScreenRoueName:(context)=>LoginScreen(),
        RegisterScreen.RegisterScreenRoueName:(context)=>RegisterScreen(),
        VerificationScreen.verificationScreenRoueName:(context)=>VerificationScreen(),
        SuccessScreen.successScreenRoueName:(context)=>SuccessScreen(),
        ForgrtPasswordScreen.forgrtPasswordScreenRoueName:(context)=>ForgrtPasswordScreen(),
        ResetPasswordScreen.resetPasswordScreenRoueName:(context)=>ResetPasswordScreen(),
        BottomNavigationBarMenu.bottomNavigationRouteName:(context)=>BottomNavigationBarMenu(),
        ProfileScreen.profileScreenRouteName:(context)=>ProfileScreen(),
        ProductDetailsScreen.routeName:(context)=>ProductDetailsScreen(),
        ProductReviewScreen.routeName:(context)=>ProductReviewScreen(),

      } ,

    )
    );
  }
}


