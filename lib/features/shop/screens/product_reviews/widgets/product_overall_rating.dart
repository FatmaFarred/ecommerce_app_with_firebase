import 'package:ecommerce_app_with_firebase/features/shop/screens/product_reviews/widgets/review_prgress_indicator.dart';
import 'package:flutter/material.dart';

class ProductOverallRating extends StatelessWidget {
  const ProductOverallRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(flex: 3,child: Text("4.8",style: Theme.of(context).textTheme.displayLarge,)),
      Expanded(flex: 7,
        child: Column(children: [
          MyRatingCircularIndicator(text: '5',value: 0.5,),
          MyRatingCircularIndicator(text: '3',value: 0.9,),
          MyRatingCircularIndicator(text: '2',value: 0.3,),
          MyRatingCircularIndicator(text: '1',value: 0.2,),
          MyRatingCircularIndicator(text: '7',value: 0.8,),

        ],),
      )
    ],);
  }
}
