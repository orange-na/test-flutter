import 'package:flutter/material.dart';
import 'package:practice/my_page_body.dart';
import 'package:practice/my_page_header.dart';

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
        child: Column(
      children: [MyPageHeader(), MyPageBody()],
    ));
  }
}
