import 'package:ecommerce_app_with_firebase/common/widgets/circular_container.dart';
import 'package:ecommerce_app_with_firebase/common/widgets/custom_appbar/custom_appbar.dart';
import 'package:ecommerce_app_with_firebase/common/widgets/product_cart/cart_counter.dart';
import 'package:ecommerce_app_with_firebase/common/widgets/title_heading/title_heading.dart';
import 'package:ecommerce_app_with_firebase/core/constants/assets_manager.dart';
import 'package:ecommerce_app_with_firebase/core/constants/color_manager.dart';
import 'package:ecommerce_app_with_firebase/core/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/image_circular_container.dart';
import '../../../../core/customized_widgets/reusable_widgets/custom_text_field.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    final dark=MyHelperFunction.isDarkMode(context);
    return Scaffold(
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
                 CircularContainer(
                   height: 70.h,
                   width: 70.w,
                   radius: 16.r,
                   padding: EdgeInsets.all(8.w),
                   border: Border.all(color:dark?ColorManager.grey:ColorManager.grey2 ),
                   backGroundColor: ColorManager.transparent,
                    child: Row(
                      children: [
                       MyCircularImageContainer(imagePath: ImageAssets.brandHomeImage,),
                        SizedBox(height: 12.h,),
                        ///text
                        ///
                        ///

                      ],
                    ),
                 )


               ],
             ),

           ),



        )];
      }
          , body: Container()),
    );
  }
}

