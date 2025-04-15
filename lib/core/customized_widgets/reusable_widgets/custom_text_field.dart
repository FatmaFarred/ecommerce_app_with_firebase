import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/color_manager.dart';
import '../../constants/font_manager/font_style_manager.dart';


typedef MyValidator = String? Function(String?);
typedef OnFieldSubmitted = void Function(String?);

class CustomTextField extends StatelessWidget {
  Widget? suffixIcon;
  Widget? prefixIcon;
  String? hintText;
  bool obscureText;
  MyValidator? validator;
  TextEditingController? controller;
  TextInputType? keyboardType;
  TextInputAction? textInputAction;
  OnFieldSubmitted? onFieldSubmitted;
  Color? fillColor;
  Color? borderColor;
  CustomTextField({
    super.key,
    this.fillColor,
    this.borderColor,
    this.suffixIcon,
    this.prefixIcon,
    this.hintText,
    this.keyboardType,
    this.textInputAction,
    this.controller,
    this.obscureText = false,
    this.validator,
    this.onFieldSubmitted,
  });
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,

      keyboardType: keyboardType,
      textInputAction: textInputAction,
      style: Theme.of(context).textTheme.bodySmall,
      obscureText: obscureText,
      obscuringCharacter: '*',
      cursorColor: Theme.of(context).indicatorColor,
      decoration: InputDecoration(
        errorStyle: getRegularStyle(color: ColorManager.error),
        suffixIcon: suffixIcon,
        suffixIconColor: Theme.of(context).indicatorColor,
        prefixIcon: prefixIcon,
        prefixIconColor: Theme.of(context).indicatorColor,
        hintText: hintText,
        hintStyle: Theme.of(context).textTheme.bodySmall,
        filled: true,
        fillColor: fillColor??ColorManager.transparent,
        enabledBorder:customOutlineInputBorder( ) ,
        focusedBorder: customOutlineInputBorder( ),
        errorBorder: customOutlineInputBorder(),
        focusedErrorBorder: customOutlineInputBorder(),
      ),
      onFieldSubmitted: onFieldSubmitted,
    );
  }

  InputBorder customOutlineInputBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(16.r),
        borderSide:  BorderSide(
          color:borderColor?? ColorManager.darkGrey,
          width: 2,
        ));
  }
}
