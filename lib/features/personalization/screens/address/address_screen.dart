import 'package:ecommerce_app_with_firebase/common/widgets/custom_appbar/custom_appbar.dart';
import 'package:ecommerce_app_with_firebase/core/constants/color_manager.dart';
import 'package:ecommerce_app_with_firebase/features/personalization/screens/address/add_new_address_screen.dart';
import 'package:ecommerce_app_with_firebase/features/personalization/screens/address/widgets/single_address_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/route_manager.dart';
import 'package:iconsax/iconsax.dart';

class AddressScreen extends StatelessWidget {
  const AddressScreen({super.key});
  static String routeName="AddressScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     floatingActionButton:FloatingActionButton(onPressed: ()=>Get.toNamed(AddNewAddressScreen.routeName),
     backgroundColor: ColorManager.purple,
       child: Icon(Iconsax.add,color: ColorManager.white,)
     ) ,
      appBar: MyCustomAppbar(
        showLeadingIcon: true,
          title: Text("Addresses"),
      ),
      body: SingleChildScrollView(child: Padding(padding: EdgeInsets.all(24.w),child: Column(
        children: [
          MySingleAddressWidget(isSelecetedAddress: true,),
          MySingleAddressWidget(isSelecetedAddress: false,),


        ],
      ),),),
    );
  }
}
