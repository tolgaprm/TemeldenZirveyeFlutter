import 'package:flutter/material.dart';

class PaddingLearnView extends StatelessWidget {
  const PaddingLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Padding Learn Widget'),
      ),
      body: Padding(
        padding: ProjectPadding.pagePaddingHorizontal,
        child: Column(
          children: [
            Padding(
              padding: ProjectPadding.pagePaddingAll10,
              child: Container(color: Colors.white, height: 100),
            ),
            Padding(
              padding: ProjectPadding.pagePaddingAll10,
              child: Container(color: Colors.white, height: 100),
            )
          ],
        ),
      ),
    );
  }
}

class ProjectPadding {
  static const pagePaddingHorizontal = EdgeInsets.symmetric(horizontal: 16);
  static const pagePaddingAll10 = EdgeInsets.all(10);
}
