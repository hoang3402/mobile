import 'package:flutter/material.dart';

// ignore: camel_case_types
class bai3 extends StatelessWidget {
  const bai3({super.key});

  @override
  Widget build(BuildContext context) {
    const String title = "Fade in images";
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text(title)),
      ),
      body: Center(
        child: FadeInImage.assetNetwork(
          placeholder: 'assets/loading.gif',
          image: 'https://picsum.photos/250?image=9',
        ),
      ),
    );
  }
}
