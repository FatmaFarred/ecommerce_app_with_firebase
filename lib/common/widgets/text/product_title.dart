import 'package:flutter/material.dart';

class MyProductTitle extends StatelessWidget {
  const MyProductTitle({
    super.key, required this.title,
    this.maxLines=2,
    this.textAlign=TextAlign.left,
    this.smallSize=false, this.style,


  });
  final String title;
  final int maxLines;
  final TextAlign? textAlign;
  final bool smallSize;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return Text(title,
      style: style ??
          (smallSize
              ? Theme.of(context).textTheme.labelLarge
              : Theme.of(context).textTheme.bodyMedium),
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      textAlign: TextAlign.left,
    );
  }
}
