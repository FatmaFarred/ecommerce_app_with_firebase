import 'package:ecommerce_app_with_firebase/common/widgets/circular_container.dart';
import 'package:ecommerce_app_with_firebase/common/widgets/rating_bar_indicator.dart';
import 'package:ecommerce_app_with_firebase/core/constants/assets_manager.dart';
import 'package:ecommerce_app_with_firebase/core/constants/color_manager.dart';
import 'package:ecommerce_app_with_firebase/core/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:readmore/readmore.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunction.isDarkMode(context);
    return Column(
      children: [
        Row(children: [
          CircleAvatar(backgroundImage: AssetImage(ImageAssets.productImage),radius: 30.r,),
          SizedBox(width: 16.w,),
          Text("Fatma Farred",style: Theme.of(context).textTheme.bodyLarge,),
          Spacer(),
          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert)),
        ],),
        SizedBox(height: 10.h,),

        ///reviews
        Row(children: [
          MyRatingBarIndicator(rating: 4.0),
          SizedBox(width: 16.w,),
          Text("01 Nov, 2025",style: Theme.of(context).textTheme.bodySmall,)
        ],),
        SizedBox(height: 10.h,),
        ReadMoreText(
          "The user interface of the app is quite intuitive , I was able to navigate and make purchases seamlessly.Great job!",
          trimLines: 2,
          trimMode: TrimMode.Line,
          trimCollapsedText:"Show more",
          trimExpandedText: "Show less",
          moreStyle:   TextStyle(color: ColorManager.purple,fontSize: 14,fontWeight: FontWeight.bold),
          lessStyle: TextStyle(color: ColorManager.purple,fontSize: 14,fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 16.h,),
        CircularContainer(backGroundColor: dark?ColorManager.darkGrey:ColorManager.lightGrey,
          radius: 16.r,
          child: Padding(padding: EdgeInsets.all(16.w),
          child: Column(children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Text("T's Store",style: Theme.of(context).textTheme.bodyLarge,),
              Text("01 Nov, 2025",style: Theme.of(context).textTheme.bodySmall,)

            ],),
            ReadMoreText(
              "The user interface of the app is quite intuitive , I was able to navigate and make purchases seamlessly.Great job!",
              trimLines: 2,
              trimMode: TrimMode.Line,
              trimCollapsedText:"Show more",
              trimExpandedText: "Show less",
              moreStyle:   TextStyle(color: ColorManager.purple,fontSize: 14,fontWeight: FontWeight.bold),
              lessStyle: TextStyle(color: ColorManager.purple,fontSize: 14,fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16.h,),




          ],),

          ),



        ),






      ],);
  }
}
