import 'package:flutter/material.dart';

class PointSection extends StatelessWidget {
  const PointSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: const Row(children: [
        Text(
          'ポイント',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        Spacer(),
        ClipOval(
          child: SizedBox(
            width: 30,
            height: 30,
            child: ColoredBox(
              color: Colors.orangeAccent,
            ),
          ),
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          '100',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          width: 10,
        ),
        ClipOval(
          child: SizedBox(
            width: 30,
            height: 30,
            child: ColoredBox(
              color: Colors.blueGrey,
            ),
          ),
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          '200',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        )
      ]),
    );
  }
}
