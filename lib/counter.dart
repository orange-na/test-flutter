import 'package:flutter/material.dart';

class Counter extends StatelessWidget {
  final int number;
  const Counter({super.key, required this.number});

  @override
  Widget build(BuildContext context) {
    final photo = Image.asset('assets/images/photo.jpg');

    final text = Text(
      '$number',
      style: const TextStyle(
        fontSize: 24,
        color: Colors.yellow,
      ),
    );

    final row = Row(children: [photo, text]);

    final con = Container(
      color: Colors.blueGrey,
      child: row,
    );

    return con;
  }
}
