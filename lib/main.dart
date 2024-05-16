import 'package:flutter/material.dart';
import 'package:practice/counter.dart';

void main() {
  // 関数
  handleClick() {
    debugPrint('Hello World');
  }

  final btn = ElevatedButton(
    onPressed: handleClick,
    child: const Text('Click Me'),
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.blueAccent,
      foregroundColor: Colors.white,
      textStyle: const TextStyle(fontSize: 20),
    ),
  );

  final col = Column(mainAxisAlignment: MainAxisAlignment.center, children: [
    Text('Hello World'),
    Text('Hello World'),
    Text('Hello World'),
    btn,
  ]);

  // final img = Image.asset('assets/images/photo.jpg');

  // final con = Container(
  //   color: Colors.blueAccent,
  //   width: 200,
  //   height: 200,
  //   child: img,
  //   alignment: Alignment.centerLeft,
  //   padding: const EdgeInsets.fromLTRB(10, 20, 30, 40),
  // );

  // final app = MaterialApp(
  //   home: Scaffold(
  //     appBar: AppBar(
  //       title: Text('Hello World'),
  //     ),
  //     body: Center(
  //       child: Counter(number: 999),
  //     ),
  //   ),
  // );

  final app = MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text('Hello'),
      ),
      body: Center(
        child: col,
      ),
    ),
  );

  runApp(app);
}
