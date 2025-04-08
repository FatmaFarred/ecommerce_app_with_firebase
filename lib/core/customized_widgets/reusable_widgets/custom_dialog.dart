import 'package:ecommerce_app_with_firebase/core/constants/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import '../../constants/font_manager/font_style_manager.dart';
import 'customized_elevated_button.dart';

class CustomDialog {
  BuildContext context;

  String? title, message, positiveText, negativeText;

  Function? positiveOnClick, negativeOnClick;

  CustomDialog.loading(
      {required this.context, this.message, bool cancelable = true}) {
    showDialog(
        context: context,
        barrierDismissible: cancelable,
        builder: (ctx) {
          return AlertDialog(
            backgroundColor: ColorManager.black,
            content: Row(
              children: [
                 CircularProgressIndicator(
                  color: ColorManager.darkBlue,
                ),
                if (message != null) ...[
                  SizedBox(width: 16.w),
                  Text(
                    message!,
                    style:
                        getSemiBoldStyle(color:ColorManager.black ),
                  ),
                ],
              ],
            ),
          );
        });
  }

  CustomDialog.positiveButton(
      {required this.context,
      this.title,
      this.message,
      this.positiveText,
      this.positiveOnClick,
      bool cancelable = true}) {
    showDialog(
        context: context,
        barrierDismissible: cancelable,
        builder: (ctx) {
          return AlertDialog(
            backgroundColor: ColorManager.black,
            title: Text(
              title ?? "",
              style: getBoldStyle(color:ColorManager.black ),
            ),
            content: Text(
              message ?? "",
              style: getBoldStyle(color:ColorManager.black ),
            ),
            actions: [
              CustomizedElevatedButton(
                color: ColorManager.darkBlue,
                bottonWidget:Text ("ok"),
                onPressed: () {
                  if (positiveOnClick != null) {
                    positiveOnClick!();
                  } else {
                    Navigator.of(context).pop();
                  }
                },
              ),
            ],
          );
        });
  }

  CustomDialog.positiveAndNegativeButton(
      {required this.context,
      this.title,
      this.message,
      this.positiveText,
      this.negativeText,
      this.positiveOnClick,
      this.negativeOnClick,
      bool cancelable = true}) {
    showDialog(
        context: context,
        barrierDismissible: cancelable,
        builder: (ctx) {
          return AlertDialog(
            backgroundColor: ColorManager.black,
            title: Text(
              title ?? "",
              style: getBoldStyle(color:ColorManager.black ),
            ),
            content: Text(
              message ?? "",
              style: getSemiBoldStyle(color:ColorManager.black ),
            ),
            actions: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: CustomizedElevatedButton(
                      color: Colors.transparent,
                      bottonWidget:Text ("no,"),
                      textStyle: getSemiBoldStyle(color:ColorManager.darkBlue ),
                      onPressed: () {
                        if (negativeOnClick != null) {
                          negativeOnClick!();
                        } else {
                          Navigator.of(ctx).pop();
                        }
                      },
                    ),
                  ),
                  SizedBox(
                    width: 16.w,
                  ),
                  Expanded(
                    child: CustomizedElevatedButton(
                      bottonWidget:Text("yes"),
                      onPressed: () {
                        if (positiveOnClick != null) {
                          positiveOnClick!();
                        } else {
                          Navigator.of(context).pop();
                        }
                      },
                    ),
                  ),
                ],
              )
            ],
          );
        });
  }
}
