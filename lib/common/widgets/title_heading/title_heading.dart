import 'package:flutter/material.dart';

import '../../../core/constants/enums.dart';

class MyTitleHeading extends StatelessWidget {
  const MyTitleHeading({
    super.key, required this.title,
    this.buttonTitle="View all",
    this.onButtonClick,
    this.showActionButton=true, this.TextColor, this.style, this.productTextSize,



  });
  final String title,buttonTitle;
  final void Function()? onButtonClick;
  final Color? TextColor;
  final bool showActionButton;
  final TextStyle? style;
  final TextSizees? productTextSize;


  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title,style:style?? (productTextSize==TextSizees.small
            ? Theme.of(context).textTheme.labelSmall?.apply(color:TextColor )
            :productTextSize==TextSizees.medium? Theme.of(context).textTheme.bodyLarge?.apply(color:TextColor ):productTextSize==TextSizees.large?
        Theme.of(context).textTheme.titleMedium?.apply(color:TextColor ):null),
          overflow: TextOverflow.ellipsis,
        ),
        showActionButton? TextButton(onPressed: onButtonClick, child: Text(buttonTitle)):SizedBox()
      ],
    );
  }
}
