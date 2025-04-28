import 'package:ecommerce_app_with_firebase/common/widgets/custom_appbar/custom_appbar.dart';
import 'package:ecommerce_app_with_firebase/core/constants/color_manager.dart';
import 'package:ecommerce_app_with_firebase/core/customized_widgets/reusable_widgets/customized_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../core/customized_widgets/reusable_widgets/custom_text_field.dart';
import '../../../../core/validators/my_validator.dart';

class AddNewAddressScreen extends StatelessWidget {
  const AddNewAddressScreen({super.key});
  static String routeName="AddNewAddressScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyCustomAppbar(
        showLeadingIcon: true,
        title: Text("Add new address"),
      ),
      body: SingleChildScrollView(child:Padding(padding: EdgeInsets.all(24.w),
      child: Column(children: [
        CustomTextField(

          keyboardType: TextInputType.name,
          textInputAction: TextInputAction.next,
          prefixIcon: Icon(Iconsax.user),
          hintText: " Name",
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
        Row(children: [
          Expanded(
            child: CustomTextField(

              keyboardType: TextInputType.name,
              textInputAction: TextInputAction.next,
              prefixIcon: Icon(Iconsax.building_31),
              hintText: "Street",
              //controller: loginViewModel.emailController,
              validator: (text) {
                if (text == null || text.trim().isEmpty) {
                  return "Street is empyt";
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

              keyboardType: TextInputType.phone,
              textInputAction: TextInputAction.next,
              prefixIcon: Icon(Iconsax.code),
              hintText: "Postal Code",
              //controller: loginViewModel.emailController,
              validator: (text) {
                if (text == null || text.trim().isEmpty) {
                  return "code is empyt";
                }
                if (text.length < 4) {
                  return "name is too short";
                }

                return null;
              },
            ),
          ),
        ],),
        SizedBox(height: 16.h,),
        Row(children: [
          Expanded(
            child: CustomTextField(

              keyboardType: TextInputType.name,
              textInputAction: TextInputAction.next,
              prefixIcon: Icon(Iconsax.activity),
              hintText: "State",
              //controller: loginViewModel.emailController,
              validator: (text) {
                if (text == null || text.trim().isEmpty) {
                  return "name is empyt";
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
              prefixIcon: Icon(Iconsax.building),
              hintText: "City",
              //controller: loginViewModel.emailController,
              validator: (text) {
                if (text == null || text.trim().isEmpty) {
                  return "name is empyt";
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
          prefixIcon: Icon(Iconsax.global),
          hintText: "Country",
          //controller: loginViewModel.emailController,
          validator: (text) {
            if (text == null || text.trim().isEmpty) {
              return "name is empyt";
            }

            return null;
          },
        ),
        SizedBox(height: 16.h,),
       CustomizedElevatedButton(borderColor:ColorManager.purple ,color: ColorManager.purple,
           bottonWidget: Text("Save",style: Theme.of(context).textTheme.bodyMedium!.apply(color: ColorManager.white),))





      ],),
      ) ,),
    );
  }
}
