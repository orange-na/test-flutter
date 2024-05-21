import 'package:flutter/material.dart';
import 'package:practice/point_section.dart';

class MyPageBody extends StatelessWidget {
  const MyPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
        color: Colors.grey[200],
        child: const Column(
          children: [
            SizedBox(
              height: 14,
            ),
            PointSection(),
            SizedBox(
              height: 14,
            ),
          ],
        ));
  }
}
