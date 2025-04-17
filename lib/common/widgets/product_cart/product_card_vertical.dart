import 'package:ecommerce_app_with_firebase/common/widgets/circular_container.dart';
import 'package:ecommerce_app_with_firebase/common/widgets/image_rounded_container.dart';
import 'package:ecommerce_app_with_firebase/core/constants/assets_manager.dart';
import 'package:ecommerce_app_with_firebase/core/constants/color_manager.dart';
import 'package:ecommerce_app_with_firebase/core/constants/enums.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';

import '../../../core/helpers/helper_functions.dart';
import '../text/product_title.dart';
import 'brand_title_with_icon.dart';

class MyProductCardVertical extends StatelessWidget {
   const MyProductCardVertical ({super.key});


  @override
  Widget build(BuildContext context) {
    final dark= MyHelperFunction.isDarkMode(context);

    return  GestureDetector(
      onTap: (){},
      child: Container(
        width: 180.w,

        padding: EdgeInsets.all(5.w),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(16.r),
          color: dark?ColorManager.darkGrey:ColorManager.white,
          boxShadow: [BoxShadow(color: ColorManager.grey.withOpacity(0.1),blurRadius: 50.r,spreadRadius: 7,
            offset: const Offset(0, 2)

          )]

        ),
         child: Column(
           children: [
             CircularContainer(
               height: 180.h,
               padding:EdgeInsets.all(1.h),
               radius: 16.r,
               backGroundColor:  dark?ColorManager.black:ColorManager.white,


               child: Stack(
                 children: [
                   ImageRoundedContainer(imageUrl: ImageAssets.productImage,applyImageRadius: true,
                     padding:EdgeInsets.zero ,
                     //backGroundColor: ColorManager.black,
                   ),
                   Positioned(
                     top: 12.h,
                     left: 5.w,
                     child: CircularContainer(
                       radius: 8.r,
                       height: 25.h,
                       width: 40.w,

                       backGroundColor:ColorManager.yellow.withOpacity(0.8) ,
                      padding: EdgeInsets.symmetric(vertical: 4.h,horizontal: 4.w),
                       child: Text("24%",style: Theme.of(context).textTheme.labelSmall?.apply(color: ColorManager.black,),),



                     ),
                   ),
                   Positioned(top: 0,right: 0,
                       child: IconButton(onPressed: (){}, icon:Icon( Iconsax.heart5,),color: ColorManager.error,))


                 ],
               ),
             ),
             SizedBox(height: 8.h,),

             ///product details
              Padding(padding: EdgeInsets.only(left: 8.w),
                child: Column(
                  crossAxisAlignment:CrossAxisAlignment.start ,
                  children: [
                  MyProductTitle(title: "Red Nike shoes",productTextSize:TextSizees.medium ,),
                    SizedBox(height: 4.h,),
                    BrandTitleWithIcon(title: "Nike",maxLines: 1,productTextSize:TextSizees.medium,),



                ],

                ),

              ),
              Spacer(),
             Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 MyProductTitle(title: "\$35.5",maxLines: 1,

                   productTextSize: null,

                   style: Theme.of(context).textTheme.bodyLarge,
                 ),
                 Container(
                   decoration: BoxDecoration(
                       color: ColorManager.black,
                       borderRadius: BorderRadius.only(topLeft:Radius.circular(8.r),
                           bottomRight:Radius.circular(8.r))
                   ),
                   child: SizedBox(height: 23.h*1.2,width:23.w*1.2 ,
                       child: Center(child: Icon(Iconsax.add,color: ColorManager.white,))),
                 ),


               ],)

           ],
         ),



      ),
    );
  }
}


