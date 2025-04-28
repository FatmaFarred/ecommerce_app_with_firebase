import 'package:ecommerce_app_with_firebase/common/widgets/circular_container.dart';
import 'package:ecommerce_app_with_firebase/core/constants/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../core/helpers/helper_functions.dart';

class MyOrderListItems extends StatelessWidget {
  const MyOrderListItems({super.key});

  @override
  Widget build(BuildContext context) {
    final dark= MyHelperFunction.isDarkMode(context);

    return ListView.separated(
      itemCount: 5,
      shrinkWrap: true,
      separatorBuilder: (_,__)=>SizedBox(height: 16.h,),
      itemBuilder: (_,index)=>
      CircularContainer(
        radius: 16.r,
        padding: EdgeInsets.all(16.w),
        backGroundColor:dark?ColorManager.black:ColorManager.containerGray ,
         border: Border.all(color:dark?ColorManager.darkGrey:ColorManager.lightGrey ),
        child: Column(children: [
          Row(children: [
            Icon(Iconsax.ship),
            SizedBox(width: 8.w),

            Expanded(
              child: Column(mainAxisSize:MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Processing",style: Theme.of(context).textTheme.labelLarge!.apply(fontWeightDelta: 1,color: ColorManager.purple),),
                  Text("07 Nov 2025",style: Theme.of(context).textTheme.bodyLarge),


                ],),
            ),
            IconButton(onPressed: (){}, icon: Icon(Iconsax.arrow_right_34,size: 20.h,))

          ],),
          SizedBox(height:16.h ,),

          Row(
            children: [
              Expanded(
                child: Row(children: [
                  Icon(Iconsax.tag),
                  SizedBox(width: 8.w),

                  Expanded(
                    child: Column(mainAxisSize:MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Order",style: Theme.of(context).textTheme.labelMedium,),
                        Text("[#24667]",style: Theme.of(context).textTheme.bodyLarge),


                      ],),
                  ),

                ],),
              ),
              Expanded(
                child: Row(children: [
                  Icon(Iconsax.calendar),
                  SizedBox(width: 8.w),

                  Expanded(
                    child: Column(mainAxisSize:MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Shipping Date",style: Theme.of(context).textTheme.labelMedium,),
                        Text("04 Nov 2025",style: Theme.of(context).textTheme.bodyLarge),


                      ],),
                  ),

                ],),
              ),
            ],
          ),
        ],)


      ),
    );
  }
}
