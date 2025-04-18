import 'package:ecommerce_app_with_firebase/common/widgets/custom_appbar/custom_appbar.dart';
import 'package:ecommerce_app_with_firebase/common/widgets/image_rounded_container.dart';
import 'package:ecommerce_app_with_firebase/common/widgets/text/product_title.dart';
import 'package:ecommerce_app_with_firebase/common/widgets/title_heading/title_heading.dart';
import 'package:ecommerce_app_with_firebase/core/constants/assets_manager.dart';
import 'package:ecommerce_app_with_firebase/core/constants/color_manager.dart';
import 'package:ecommerce_app_with_firebase/core/constants/enums.dart';
import 'package:ecommerce_app_with_firebase/core/customized_widgets/reusable_widgets/text_botton.dart';
import 'package:ecommerce_app_with_firebase/features/personalization/screens/profile/widgets/profile_menu_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});
  static String profileScreenRouteName = "ProfileScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyCustomAppbar(
        title: Text(
          "Profile",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        showLeadingIcon: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(24.h),
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  ImageRoundedContainer(
                    imageUrl: ImageAssets.productImage,
                    height: 80.h,
                    width: 80.w,
                    radius: 80.r,
                    applyImageRadius: true,
                    fit: BoxFit.fill,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Change Profile Picture",
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ),
                ],
              ),
            ),

            ///details
            Padding(
              padding: EdgeInsets.only(top: 9.h, bottom: 18.h),
              child: Divider(),
            ),
            MyTitleHeading(
              title: "Profile Information",
              productTextSize: TextSizees.medium,
              showActionButton: false,
            ),
            SizedBox(height: 16.h),

            MyProfileMenuWidget(lable: "Name",title: "Fatma Farred",onPressed: (){},),
            MyProfileMenuWidget(lable: "Username",title: "Fatma Farred",onPressed: (){},),

            Padding(
              padding: EdgeInsets.only(top: 9.h, bottom: 18.h),
              child: Divider(),
            ),
            MyTitleHeading(
              title: "Personal Information",
              productTextSize: TextSizees.medium,
              showActionButton: false,
            ),
            SizedBox(height: 16.h),
            MyProfileMenuWidget(lable: "User ID",title: "63738",onPressed: (){},icon: Iconsax.copy,),
            MyProfileMenuWidget(lable: "E-mail",title: "FatmaFarred@gmailcom",onPressed: (){},),
            MyProfileMenuWidget(lable: "Phone Number",title: "+201277154413",onPressed: (){},),
            MyProfileMenuWidget(lable: "Gender",title: "Female",onPressed: (){},),
            MyProfileMenuWidget(lable: "Date of birth",title: "10 Oct 1999",onPressed: (){},),

            Padding(
              padding: EdgeInsets.only(top: 9.h, bottom: 18.h),
              child: Divider(),
            ),
            MyTextButton(onBottonClick: (){}, buttonWidegt: Text("Close Account",style:Theme.of(context).textTheme.bodySmall!.apply(color: ColorManager.error) ,))





          ],
        ),
      ),
    );
  }
}

