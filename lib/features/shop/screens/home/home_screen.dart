import 'package:ecommerce_app_with_firebase/core/constants/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../common/widgets/circular_container.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: ColorManager.purple,
              padding: EdgeInsets.all(0),
              child: SizedBox(
                height: 400.h, // You can adjust this height as needed
                child: Stack(
                  children: [
                    Positioned(
                      child: CircularContainer(),
                      top: -150.h,
                      right: -250.w,
                    ),
                    Positioned(
                      child: CircularContainer(),
                      top: 100.h,
                      right: -300.w,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
