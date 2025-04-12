import 'package:flutter/material.dart';

import '../../../../common/widgets/primary_header_container.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            MyPrimaryHeaderContainer(stackChild: Container()),
          ],
        ),
      ),
    );
  }
}


