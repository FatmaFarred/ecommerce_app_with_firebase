import 'package:ecommerce_app_with_firebase/common/widgets/circular_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';

import '../../../core/constants/assets_manager.dart';
import '../../../core/constants/color_manager.dart';
import '../../../core/constants/enums.dart';
import '../../../core/helpers/helper_functions.dart';
import '../../../features/shop/screens/product_details/product_details_screen.dart';
import '../image_rounded_container.dart';
import '../text/product_title.dart';
import 'brand_title_with_icon.dart';

class MyProductCardHorizental extends StatelessWidget {
  const MyProductCardHorizental({super.key});

  Widget build(BuildContext context) {
    final dark= MyHelperFunction.isDarkMode(context);

    return  GestureDetector(
      onTap: ()=>Get.toNamed(ProductDetailsScreen.routeName),
      child: Container(
        width: 340.w,

        padding: EdgeInsets.all(5.w),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(16.r),
            color: dark?ColorManager.darkGrey:ColorManager.containerGray,

        ),
        child:Row(children: [
          CircularContainer(
            height: 120.h,
            padding:EdgeInsets.all(8.h),
            radius: 16.r,
            backGroundColor:  dark?ColorManager.black:ColorManager.white2,


            child: Stack(
              children: [
                ImageRoundedContainer(imageUrl: ImageAssets.productImage2,applyImageRadius: true,
                  padding:EdgeInsets.zero ,
                  backGroundColor: dark?ColorManager.black:ColorManager.white2,
                ),
                Positioned(
                  top: 12.h,
                  left: 5.w,
                  child: CircularContainer(
                    radius: 8.r,


                    backGroundColor:ColorManager.yellow.withOpacity(0.8) ,
                    padding: EdgeInsets.symmetric(vertical: 4.h,horizontal: 8.w),
                    child: Text("24%",style: Theme.of(context).textTheme.labelSmall?.apply(color: ColorManager.black,),),



                  ),
                ),
                Positioned(top: 0,right: 0,
                    child: IconButton(onPressed: (){}, icon:Icon( Iconsax.heart5,),color: ColorManager.error,))


              ],
            ),
          ),

          ///Details
          SizedBox(width: 172.w,
            child: Padding(
              padding: EdgeInsets.only(top: 8.h,left: 8.w),
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment:CrossAxisAlignment.start ,
                    children: [
                      MyProductTitle(title: "Red Nike shoes",productTextSize:TextSizees.medium ,maxLines: 2,),
                      SizedBox(height: 4.h,),
                      BrandTitleWithIcon(title: "Nike",maxLines: 1,productTextSize:TextSizees.small,),



                    ],

                  ),
                  Spacer(),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: MyProductTitle(title: "\$35.5-837.33",maxLines: 1,

                          productTextSize: null,

                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
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


          ),



        ],),



      ),
    );
  }
}
