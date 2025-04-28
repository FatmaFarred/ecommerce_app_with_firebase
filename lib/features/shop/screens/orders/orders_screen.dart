import 'package:ecommerce_app_with_firebase/features/shop/screens/orders/widgets/order_list_items.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../common/widgets/custom_appbar/custom_appbar.dart';
import '../../../../core/helpers/helper_functions.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});
  static String routeName="OrdersScreen";

  @override
  Widget build(BuildContext context) {
    final dark= MyHelperFunction.isDarkMode(context);

    return Scaffold(
      appBar: MyCustomAppbar(title: Text("My Orders"),showLeadingIcon: true,),
      body: Padding(padding: EdgeInsets.all(24.w),
      child: MyOrderListItems(),
      ),

    );
  }
}
