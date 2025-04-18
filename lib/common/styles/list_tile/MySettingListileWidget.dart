import 'package:ecommerce_app_with_firebase/core/constants/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MySettinglistilewidget extends StatelessWidget {
  const MySettinglistilewidget({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
    this.trailing, this.OnPressed,
  });
  final String title, subtitle;
  final IconData icon;
  final Widget? trailing;
  final VoidCallback? OnPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: ColorManager.purple, size: 28.h),
      title: Text(title, style: Theme.of(context).textTheme.bodyLarge),
        subtitle: Text(subtitle, style: Theme.of(context).textTheme.labelSmall?.apply(color: ColorManager.grey)),
      trailing: trailing,
      onTap:OnPressed ,
    );
  }
}
