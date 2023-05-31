import 'package:flutter/material.dart';

// ignore: camel_case_types
class bai2 extends StatelessWidget {
  const bai2({super.key});

  @override
  Widget build(BuildContext context) {
    const String title = "Web Images";
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text(title)),
      ),
      body: Center(
        child: Image.network('https://picsum.photos/250?image=9'),
      ),
    );
  }
}
