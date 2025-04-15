import 'package:flutter/material.dart';

class MyTitleHeading extends StatelessWidget {
  const MyTitleHeading({
    super.key, required this.title,
    this.buttonTitle="View all",
    this.onButtonClick,
    this.titleColor,
    this.showActionButton=true,



  });
  final String title,buttonTitle;
  final void Function()? onButtonClick;
  final Color? titleColor;
  final bool showActionButton;


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title,style: Theme.of(context).textTheme.headlineSmall?.apply(color: titleColor),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        showActionButton? TextButton(onPressed: onButtonClick, child: Text(buttonTitle)):SizedBox()
      ],
    );
  }
}
