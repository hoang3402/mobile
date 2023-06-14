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
      title: 'Lab 7 Adding interactivity to your Flutter app',
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
    String title = 'Lab 7 Adding interactivity to your Flutter app';
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Center(child: Text(title)),
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.numbers)),
                Tab(icon: Icon(Icons.numbers))
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
