import 'package:flutter/material.dart';
import 'stack_profile.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Stack Demo',
      home: StackDemo(),
    );
  }
}
