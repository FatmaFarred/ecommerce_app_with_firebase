import 'package:ecommerce_app_with_firebase/core/constants/color_manager.dart';
import 'package:flutter/material.dart';

import '../../../core/device/device_utility.dart';
import '../../../core/helpers/helper_functions.dart';

class MyCustomTabBar  extends StatelessWidget implements PreferredSizeWidget{
  const MyCustomTabBar({super.key, required this.tabs});
  final List<Widget>tabs;

  @override
  Widget build(BuildContext context) {
    final dark=MyHelperFunction.isDarkMode(context);

    return Material(
      color:dark?ColorManager.black: ColorManager.white,
      child: TabBar(tabs: tabs,
        isScrollable: true,
        indicatorColor: ColorManager.purple,
        labelColor: Theme.of(context).indicatorColor,
        unselectedLabelColor: ColorManager.grey,
        labelStyle: Theme.of(context).textTheme.bodyLarge,
        tabAlignment: TabAlignment.start,

      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(MyDeviceUtility.getAppBarHeight());
}
