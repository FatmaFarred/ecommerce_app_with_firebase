import 'package:ecommerce_app_with_firebase/core/constants/enums.dart';
import 'package:flutter/material.dart';

class MyProductTitle extends StatelessWidget {
  const MyProductTitle({
    super.key, required this.title,
    this.maxLines=2,
    this.textAlign=TextAlign.left,
   this.style,
    required this.productTextSize,
  this.TextColor,


  });
  final String title;
  final int maxLines;
  final TextAlign? textAlign;
  final TextStyle? style;
  final TextSizees? productTextSize;
  final Color? TextColor;


  @override
  Widget build(BuildContext context) {
    return Text(title,
      style: style??
          (productTextSize==TextSizees.small
              ? Theme.of(context).textTheme.labelSmall?.apply(color:TextColor )
              :productTextSize==TextSizees.medium? Theme.of(context).textTheme.bodyLarge?.apply(color:TextColor ):productTextSize==TextSizees.large?
      Theme.of(context).textTheme.titleMedium?.apply(color:TextColor ):null),
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      textAlign: TextAlign.left,
    );
  }
}
