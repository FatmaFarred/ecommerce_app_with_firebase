import 'package:ecommerce_app_with_firebase/common/widgets/circular_container.dart';
import 'package:ecommerce_app_with_firebase/common/widgets/text/product_title.dart';
import 'package:ecommerce_app_with_firebase/core/constants/color_manager.dart';
import 'package:ecommerce_app_with_firebase/core/constants/enums.dart';
import 'package:ecommerce_app_with_firebase/core/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';

class MySingleAddressWidget extends StatelessWidget {
  const MySingleAddressWidget({super.key, required this.isSelecetedAddress});
  final bool isSelecetedAddress;


  @override
  Widget build(BuildContext context) {
    final dark =MyHelperFunction.isDarkMode(context);
    return CircularContainer(
      width:double.infinity ,
      radius: 16.r,
      padding:EdgeInsets.all( 16.h),
      backGroundColor:isSelecetedAddress?ColorManager.purple.withOpacity(0.5):ColorManager.transparent ,
      border:Border.all(color:isSelecetedAddress?ColorManager.transparent:dark?ColorManager.darkGrey:ColorManager.lightGrey ),
      margin: EdgeInsets.only(bottom: 18.h),
      child:Stack(children: [
        Positioned(top: 0,right: 5.w,
            child: Icon(isSelecetedAddress?Iconsax.tick_circle5:null,color:dark?ColorManager.white:ColorManager.black ,)),
        Column(crossAxisAlignment:  CrossAxisAlignment.start,
          children: [
          MyProductTitle(title: "Fatma Farred", productTextSize: TextSizees.medium,maxLines: 1,),
          SizedBox(height:4.h ,),
          MyProductTitle(title: "+20 1277154413", productTextSize: TextSizees.small,maxLines: 1,),


          SizedBox(height:4.h ,),
          MyProductTitle(title: "166 Alex ,east Alexandria close to the borg,1736,Egypt", productTextSize: TextSizees.small,maxLines: 2,),

        ],)

      ],) ,

    );
  }
}
