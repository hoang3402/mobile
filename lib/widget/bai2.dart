import 'dart:math';

import 'package:flutter/material.dart';
import 'package:mobile/widget/tapboxA.dart';
import 'package:mobile/widget/tapboxB.dart';
import 'package:mobile/widget/tapboxC.dart';

class Bai2 extends StatefulWidget {
  const Bai2({super.key});

  @override
  State<Bai2> createState() => _Bai2State();
}

class _Bai2State extends State<Bai2> {
  final String title = 'Managing state';
  bool _active = false;
  void _handleTapboxChanged(bool newValue) {
    setState(() {
      _active = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Center(child: Text(title)),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.numbers)),
              Tab(icon: Icon(Icons.numbers)),
              Tab(icon: Icon(Icons.numbers))
            ],
          ),
        ),
        body: TabBarView(
          children: [
            const TapboxA(),
            TapboxB(active: _active, onChanged: _handleTapboxChanged),
            TapboxC(active: _active, onChanged: _handleTapboxChanged)
          ],
        ),
      ),
    );
  }
}
