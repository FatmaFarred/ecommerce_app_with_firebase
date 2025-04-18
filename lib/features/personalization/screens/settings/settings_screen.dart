import 'package:ecommerce_app_with_firebase/common/styles/list_tile/MySettingListileWidget.dart';
import 'package:ecommerce_app_with_firebase/common/widgets/custom_appbar/custom_appbar.dart';
import 'package:ecommerce_app_with_firebase/common/widgets/image_circular_container.dart';
import 'package:ecommerce_app_with_firebase/common/widgets/primary_header_container.dart';
import 'package:ecommerce_app_with_firebase/common/widgets/title_heading/title_heading.dart';
import 'package:ecommerce_app_with_firebase/core/constants/assets_manager.dart';
import 'package:ecommerce_app_with_firebase/core/constants/color_manager.dart';
import 'package:ecommerce_app_with_firebase/core/constants/enums.dart';
import 'package:ecommerce_app_with_firebase/core/customized_widgets/reusable_widgets/customized_elevated_button.dart';
import 'package:ecommerce_app_with_firebase/features/personalization/screens/profile/profile_screen.dart';
import 'package:ecommerce_app_with_firebase/features/personalization/screens/settings/widgets/user_profile_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/route_manager.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/image_rounded_container.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: Column(children: [
          MyPrimaryHeaderContainer(stackChild: Column(children: [
            MyCustomAppbar(
              ///AppBar
              title: Text("Account",
              style: Theme.of(context).textTheme.headlineMedium!.apply(color: ColorManager.white),

              ),
            ),
            MyUserProfileTitle(onPressed: ()=>Get.toNamed(ProfileScreen.profileScreenRouteName),),
          ],)
          ),
          ///body
          Padding(padding: EdgeInsets.all(24.w),
          child: Column(children: [
            MyTitleHeading(title: "Account Settings",showActionButton: false,productTextSize: TextSizees.large,),
            SizedBox(height: 18.h,),
            MySettinglistilewidget(title: "My Addresses", subtitle: "Set shopping delivery address", icon: Iconsax.safe_home, ),
            MySettinglistilewidget(title: "My Cart", subtitle: "Add, remove products and move to check out ", icon: Iconsax.shopping_cart, ),
            MySettinglistilewidget(title: "My Orders", subtitle: "In-progress and completed orders ", icon: Iconsax.bag_tick, ),
            MySettinglistilewidget(title: "Bank Account", subtitle: "Withdraw balance to registered bank account ", icon: Iconsax.bank, ),
            MySettinglistilewidget(title: "My Coupons", subtitle: "List of all the discounts coupons", icon: Iconsax.discount_shape, ),
            MySettinglistilewidget(title: "Notifications", subtitle: "Set any kind of notification message ", icon: Iconsax.notification, ),
            MySettinglistilewidget(title: "Account Privacy", subtitle: "Manage data usage and connected accounts", icon: Iconsax.security_card, ),

            ///App settings
            SizedBox(height: 32.h,),
            MyTitleHeading(title: "App Settings ",showActionButton: false,productTextSize: TextSizees.large,),
            SizedBox(height: 18.h,),
            MySettinglistilewidget(title: "Load Data", subtitle: "Upload data to your Cloud Firebase", icon:Icons.upload ),
            MySettinglistilewidget(title: "Geolocation", subtitle: "Set recommendation based on location ",
              icon: Iconsax.location,
              trailing: Switch(value: false, onChanged: (value){},activeColor: ColorManager.purple,),
            ),
            MySettinglistilewidget(title: "Safe Mode", subtitle: "Search result is safe for all ages ",
              icon: Iconsax.security_user,
              trailing: Switch(value: false, onChanged: (value){},activeColor: ColorManager.purple,),
            ),
            MySettinglistilewidget(title: "HD Image Quality", subtitle: "Set Image quality to be seen",
              icon: Iconsax.image,
              trailing: Switch(value: false, onChanged: (value){},activeColor: ColorManager.purple,),
            ),

            ///logout button
            SizedBox(height: 32.h,),
            CustomizedElevatedButton(bottonWidget: Text("Logout",style: Theme.of(context).textTheme.bodyLarge,),borderColor: ColorManager.grey,
              color: ColorManager.transparent,
             ),

            SizedBox(height: 64.h,),













          ],),
          )
        ],),
      ) ,
    );
  }
}

