import 'package:ecommerce_app_with_firebase/features/authentication/screens/register/register_widget/register_footer.dart';
import 'package:ecommerce_app_with_firebase/features/authentication/screens/register/register_widget/register_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/helper_functions.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});
  static String RegisterScreenRoueName="RegisterScreen";


  @override
  Widget build(BuildContext context) {
    final dark= MyHelperFunction.isDarkMode(context);

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(24.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          ///title
            Text("Let's create your account",style: Theme.of(context).textTheme.headlineMedium,),
            RegisterForm(),
              RegisterFooter(dark: dark),

            
          ],),

        )
        ,),

    );
  }
}
