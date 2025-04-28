import 'package:ecommerce_app_with_firebase/common/widgets/gridview_layout.dart';
import 'package:ecommerce_app_with_firebase/common/widgets/product_cart/product_card_vertical.dart';
import 'package:ecommerce_app_with_firebase/core/constants/color_manager.dart';
import 'package:ecommerce_app_with_firebase/features/shop/screens/store/widgets/brand_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/custom_appbar/custom_appbar.dart';
import '../../../../common/widgets/product_cart/sortable_products.dart';
import '../../../../core/helpers/helper_functions.dart';

class AllBrandProductsScreen extends StatelessWidget {
  const AllBrandProductsScreen({super.key});
  static String routeName="AllBrandProductsScreen";



  @override
  Widget build(BuildContext context) {
    final dark= MyHelperFunction.isDarkMode(context);

    return Scaffold(
      appBar: MyCustomAppbar(title: Text("Nike"),showLeadingIcon: true,),
      body: SingleChildScrollView(child: Padding(padding: EdgeInsets.all(24.w ),
        child:Column(
          children: [
            MyBrandContainer(dark: dark),
            SizedBox(height: 32.h,),
            MySortableProducts(dark: dark),
          ],
        ) ,
      ),),

    );
  }
}

