import 'package:flutter/material.dart';
import 'package:mobile/widget/bai1.dart';
import 'package:mobile/widget/bai2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Lab 4 Animate a page route transition',
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String title = ':D';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text(title),
            bottom: const TabBar(
              tabs: [
                Text('Bài 1'),
                Text('Bài 2'),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              Bai1(),
              Bai2(),
            ],
          ),
        ),
      ),
    );
  }
}
