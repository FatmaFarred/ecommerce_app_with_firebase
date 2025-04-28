import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';


class VerficationWidget extends StatelessWidget {
  VerficationWidget({super.key, 
    required this.text, required this.imagePath,  this.subText,this.height, required this.subText2
  });
  String imagePath;
  String text;
  String ?subText;
  double ?height;
  String subText2;



  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
      SizedBox(height:height??600.h,width:300.w,
        child: Lottie.asset(imagePath ),),
      SizedBox(height: 32.h,),
      Text(text,
        style: Theme.of(context).textTheme.headlineMedium,
        textAlign: TextAlign.center,
      ),
      SizedBox(height: 16.h,),
      Text(subText??"",
        style: Theme.of(context).textTheme.labelLarge,
        textAlign: TextAlign.center,
      ),
      SizedBox(height:subText==null?20.h:0.h,),
      Text(subText2,
        style: Theme.of(context).textTheme.labelMedium,
        textAlign: TextAlign.center,
      ),





    ],);
  }
}
