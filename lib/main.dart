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
      title: 'Lab 1 Work with Tabs and Display images from the internet',
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
  String title = 'Lab 3 Build a form with validation';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Center(child: Text(title)),
            bottom: const TabBar(tabs: [
              Tab(text: "Bài 1"),
              Tab(text: "Bài 2"),
            ]),
          ),
          body: const TabBarView(
            children: [Bai1(), Bai2()],
          ),
        ),
      ),
    );
  }
}
