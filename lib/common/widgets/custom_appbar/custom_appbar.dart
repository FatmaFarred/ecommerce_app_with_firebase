import 'package:ecommerce_app_with_firebase/core/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:iconsax/iconsax.dart';

class MyCustomAppbar extends StatelessWidget implements PreferredSizeWidget{
  const MyCustomAppbar({super.key,  this.showLeadingIcon=false,
     this.onLeadingClick,  this.leadingIcon, this.title, this.actions});
 final bool showLeadingIcon;
 final VoidCallback? onLeadingClick;
 final IconData? leadingIcon;
  final Widget? title;
  final List<Widget>? actions;




  @override
  Widget build(BuildContext context) {
    return  Padding(padding: EdgeInsets.symmetric(horizontal: 16.w),
    child: AppBar(
      automaticallyImplyLeading: false,
      leading: showLeadingIcon? IconButton(onPressed: ()=>Get.back(), icon:Icon(Iconsax.arrow_left) ):
      leadingIcon!=null? IconButton(onPressed: onLeadingClick, icon:Icon(leadingIcon) ):null,
      title: title,
      actions:actions,



    ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(MyDeviceUtility.getAppBarHeight());
}
