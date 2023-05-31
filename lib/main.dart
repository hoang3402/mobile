import 'package:flutter/material.dart';
import 'package:mobile/widgets/Bai1.dart';
import 'package:mobile/widgets/bai2.dart';
import 'package:mobile/widgets/bai3.dart';

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
  @override
  Widget build(BuildContext context) {
    const String title = "Lab 1";
    return SafeArea(
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Center(child: Text(title)),
            bottom: const TabBar(
              tabs: [
                Tab(icon: Text('TabController')),
                Tab(icon: Text('Web Images')),
                Tab(icon: Text('Fade in images')),
              ],
            ),
          ),
          body: const TabBarView(children: [
            bai1(),
            bai2(),
            bai3(),
          ]),
        ),
      ),
    );
  }
}
