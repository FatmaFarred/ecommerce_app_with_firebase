import 'package:ecommerce_app_with_firebase/common/styles/spacing_styles.dart';
import 'package:ecommerce_app_with_firebase/core/helpers/helper_functions.dart';
import 'package:ecommerce_app_with_firebase/features/authentication/screens/login/widgets/login_form.dart';
import 'package:flutter/material.dart';



import 'widgets/login_footer.dart';
import 'widgets/login_header.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  static String loginScreenRoueName="LoginScreen";

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {


  @override
  Widget build(BuildContext context) {
    final dark= MyHelperFunction.isDarkMode(context);

    return  Scaffold(
      body:SingleChildScrollView(
        child: Padding(padding: MySpacingStyle.paddingWithAppBarHeight,
        child: Column(children: [
          ///header =>logo& title& subtitle
          LoginHeader(),
          ///form =>validation
          LoginForm(),
          ///footer
          LoginFooter(dark: dark)


        ],),
        ),
      )

    );


  }
}


