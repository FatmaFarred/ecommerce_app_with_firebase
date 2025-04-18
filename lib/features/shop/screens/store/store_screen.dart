import 'package:ecommerce_app_with_firebase/common/widgets/custom_appbar/custom_appbar.dart';
import 'package:ecommerce_app_with_firebase/common/widgets/custom_appbar/custom_tab_bar.dart';
import 'package:ecommerce_app_with_firebase/common/widgets/gridview_layout.dart';
import 'package:ecommerce_app_with_firebase/common/widgets/product_cart/cart_counter.dart';
import 'package:ecommerce_app_with_firebase/common/widgets/title_heading/title_heading.dart';
import 'package:ecommerce_app_with_firebase/core/constants/color_manager.dart';
import 'package:ecommerce_app_with_firebase/core/helpers/helper_functions.dart';
import 'package:ecommerce_app_with_firebase/features/shop/screens/store/widgets/brand_container.dart';
import 'package:ecommerce_app_with_firebase/features/shop/screens/store/widgets/my_category_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../core/customized_widgets/reusable_widgets/custom_text_field.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    final dark=MyHelperFunction.isDarkMode(context);
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: MyCustomAppbar(title: Text("Store",
        style: Theme.of(context).textTheme.headlineMedium,
        ),
            actions: [MyCartCounter(OnCartClick: (){},
              iconColor: Theme.of(context).indicatorColor,containerColor:Theme.of(context).indicatorColor,counterstyle: Theme.of(context).textTheme.labelLarge?.apply(color:dark?ColorManager.black:ColorManager.white ),)],

        ),

        body: NestedScrollView(headerSliverBuilder: (_,innerBoxIsScrolled ){
          return [SliverAppBar(
            automaticallyImplyLeading: false,
            pinned: true,
            backgroundColor: dark?ColorManager.black:ColorManager.white,
            floating: true,
            expandedHeight: 440.h,
             flexibleSpace: Padding(padding: REdgeInsets.all(16.h),
               child: ListView(
                 shrinkWrap: true,
                 physics: const NeverScrollableScrollPhysics(),
                 children: [
                   SizedBox(height: 16.h,),
                   CustomTextField(prefixIcon: Icon(Iconsax.search_normal),
                     hintText:"Search in store" ,
                     borderColor:dark?ColorManager.grey:ColorManager.grey2,
                   ),
                   SizedBox(height: 32.h,),

                   ///featured brands
                   MyTitleHeading(title: "Featured brands",onButtonClick: (){},),
                   SizedBox(height: 12.h,),
                   MyGridViewLayout(itemCount: 4,mainAxisExtent: 80.h, itembuilder: (_,index){
                     return MyBrandContainer(dark: dark);
                   })

                 ],
               ),

             ),
            ///scrollable tabbar
            bottom: MyCustomTabBar(tabs:
            [Tab(child:Text("Sports") ,),
              Tab(child:Text("Furniture") ,),
              Tab(child:Text("Electronics") ,),
              Tab(child:Text("Clothes") ,),
              Tab(child:Text("Cosmetics") ,),

            ]),



          )];
        }
            , body: TabBarView(children: [
              MyCategoryTab(dark: dark)
              
            ])),
      ),
    );
  }
}




