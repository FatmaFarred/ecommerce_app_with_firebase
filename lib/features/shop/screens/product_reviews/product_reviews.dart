import 'package:ecommerce_app_with_firebase/common/widgets/custom_appbar/custom_appbar.dart';
import 'package:ecommerce_app_with_firebase/core/constants/color_manager.dart';
import 'package:ecommerce_app_with_firebase/core/device/device_utility.dart';
import 'package:ecommerce_app_with_firebase/features/shop/screens/product_reviews/widgets/product_overall_rating.dart';
import 'package:ecommerce_app_with_firebase/features/shop/screens/product_reviews/widgets/review_prgress_indicator.dart';
import 'package:ecommerce_app_with_firebase/features/shop/screens/product_reviews/widgets/user_review_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/rating_bar_indicator.dart';

class ProductReviewScreen extends StatelessWidget {
  const  ProductReviewScreen({super.key});
  static String routeName = "ProductReviewScreen";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyCustomAppbar(
        title: Text("Reviews & Ratings"),
        showLeadingIcon: true,
      ),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(24.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Rating and reviews are verified and from people who use the same product that you use. "),
            SizedBox(height:16.h ,),
            ProductOverallRating(),
            MyRatingBarIndicator(rating: 3.5,),
            Text("12,611",style: Theme.of(context).textTheme.labelMedium,),
            SizedBox(height:32.h ,),

            ///user review list
            UserReviewCard(),
            UserReviewCard(),


        ],),
        ),

      ),
    );
  }
}



