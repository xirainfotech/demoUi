import 'package:flutter/material.dart';
import 'package:ui_demo/ui/homepage.dart';

void main() {
  runApp(const DemoUi());
}

class DemoUi extends StatelessWidget {
  const DemoUi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
