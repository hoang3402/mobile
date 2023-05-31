import 'package:flutter/material.dart';

// ignore: camel_case_types
class bai1 extends StatelessWidget {
  const bai1({super.key});

  @override
  Widget build(BuildContext context) {
    const String title = "TabController";
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text(title)),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.directions_car)),
              Tab(icon: Icon(Icons.directions_transit)),
              Tab(icon: Icon(Icons.directions_bike)),
            ],
          ),
        ),
        body: const TabBarView(children: [
          Icon(Icons.directions_car),
          Icon(Icons.directions_transit),
          Icon(Icons.directions_bike),
        ]),
      ),
    );
  }
}
