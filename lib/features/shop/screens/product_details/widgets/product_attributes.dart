import 'package:ecommerce_app_with_firebase/common/widgets/circular_container.dart';
import 'package:ecommerce_app_with_firebase/common/widgets/text/product_title.dart';
import 'package:ecommerce_app_with_firebase/common/widgets/title_heading/title_heading.dart';
import 'package:ecommerce_app_with_firebase/core/constants/color_manager.dart';
import 'package:ecommerce_app_with_firebase/core/constants/enums.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../common/widgets/my_choice_chip.dart';
import '../../../../../core/helpers/helper_functions.dart';

class ProductAttributes extends StatelessWidget {
  const ProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunction.isDarkMode(context);

    return Column(children: [
      ///seleceted attributes pricing & description
      CircularContainer(height:120.h,
      margin:EdgeInsets.symmetric(vertical:8.h) ,
      backGroundColor: dark?ColorManager.darkGrey:ColorManager.containerGray,
        padding:EdgeInsets.all(8.h),
        radius: 12.r,

        child:Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
              MyProductTitle(title: "Variation", productTextSize: TextSizees.medium),
              SizedBox(width: 16.w,),
              ///actual price
              Column(crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Row(children: [
                  const MyProductTitle(title: "price :", productTextSize:TextSizees.small ,),
                  MyProductTitle(title: "\$25", productTextSize: null,style: Theme.of(context).textTheme.labelLarge!.apply(decoration: TextDecoration.lineThrough),),
                  SizedBox(width: 16.w,),
                  MyProductTitle(title: "\$20", productTextSize: null,style: Theme.of(context).textTheme.bodyMedium),
                ],),
                Row(children: [
                  const MyProductTitle(title: "Stock :", productTextSize:TextSizees.small ,),
                  MyProductTitle(title: "In stock  ", productTextSize:null ,style: Theme.of(context).textTheme.bodyMedium),


                ],)
              ],)
            ],),
            ///variation description
            MyProductTitle(title: "this is the description of the product",
                maxLines: 4,
                productTextSize:null ,style: Theme.of(context).textTheme.labelLarge),

          ],
        ) ,
      ),
      SizedBox(height: 16.h,),
      Column(crossAxisAlignment:CrossAxisAlignment.start ,
        children: [
        MyTitleHeading(title: "Colors",showActionButton: false,productTextSize: TextSizees.large,),
        SizedBox(height: 16.h,),

        Wrap(spacing: 8.h,
          children: [
            MyChoiceChip(text: "Green",selected: true,onSelected: (value){},),
            MyChoiceChip(text: "Red",selected: false,onSelected: (value){}),
            MyChoiceChip(text: "Yellow",selected: false,onSelected: (value){}),
          ],)

      ],),
      Column(crossAxisAlignment:CrossAxisAlignment.start ,
        children: [
        MyTitleHeading(title: "Size",showActionButton: false,productTextSize: TextSizees.large,),
        SizedBox(height: 16.h,),

        Wrap(spacing: 8.h,
          children: [
            MyChoiceChip(text: "Eu 34",selected: true,onSelected: (value){},),
            MyChoiceChip(text: "Eu 36",selected: false,onSelected: (value){}),
            MyChoiceChip(text: "Eu 38",selected: false,onSelected: (value){}),
          ],)

      ],)


      ///Attributes


    ],);
  }
}
