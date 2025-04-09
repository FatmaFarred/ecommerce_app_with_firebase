import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';


class VerficationWidget extends StatelessWidget {
  VerficationWidget({
    required this.text, required this.imagePath, required this.subText,this.height, required this.subText2
  });
  String imagePath;
  String text;
  String subText;
  double ?height;
  String subText2;



  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(height:height??600.h,width:300.w,
        child: Lottie.asset(imagePath ),),
      SizedBox(height: 32.h,),
      Text(text,
        style: Theme.of(context).textTheme.headlineMedium,
        textAlign: TextAlign.center,
      ),
      SizedBox(height: 20.h,),
      Text(subText,
        style: Theme.of(context).textTheme.labelLarge,
        textAlign: TextAlign.center,
      ),
      SizedBox(height: 20.h,),
      Text(subText2,
        style: Theme.of(context).textTheme.labelMedium,
        textAlign: TextAlign.center,
      ),





    ],);
  }
}
