import 'package:ecommerce_app_with_firebase/common/widgets/gridview_layout.dart';
import 'package:ecommerce_app_with_firebase/common/widgets/product_cart/product_card_vertical.dart';
import 'package:ecommerce_app_with_firebase/common/widgets/product_cart/sortable_products.dart';
import 'package:ecommerce_app_with_firebase/common/widgets/title_heading/title_heading.dart';
import 'package:ecommerce_app_with_firebase/core/constants/color_manager.dart';
import 'package:ecommerce_app_with_firebase/features/shop/screens/all_brand_products/all_brand_product.dart';
import 'package:ecommerce_app_with_firebase/features/shop/screens/store/widgets/brand_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/custom_appbar/custom_appbar.dart';
import '../../../../core/helpers/helper_functions.dart';

class AllBrandsScreen extends StatelessWidget {
  const AllBrandsScreen({super.key});
  static String routeName="AllBrandsScreen";



  @override
  Widget build(BuildContext context) {
    final dark= MyHelperFunction.isDarkMode(context);

    return Scaffold(
      appBar: MyCustomAppbar(title: Text(" Brands"),showLeadingIcon: true,),
      body: SingleChildScrollView(child: Padding(padding: EdgeInsets.all(24.w ),
        child:Column(children: [
          ///dropdown
          MyTitleHeading(title: "Brands",showActionButton: false,),
          SizedBox(height: 32.h,),
          MyGridViewLayout(itemCount: 10, itembuilder: (_,index)=>MyBrandContainer(dark: dark,onPressed: ()=>Get.to(AllBrandProductsScreen()),),mainAxisExtent: 80.h,)


        ],) ,
      ),),

    );
  }
}
