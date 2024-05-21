import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:practice/home.dart';

void main() {
  final home = Home();
  final app = MaterialApp(
    home: home,
  );
  final scopedApp = ProviderScope(child: app);
  runApp(scopedApp);
}
