import 'package:flutter/material.dart';

class Bai2 extends StatefulWidget {
  const Bai2({super.key});

  @override
  State<Bai2> createState() => _Bai2State();
}

class _Bai2State extends State<Bai2> {
  bool _visible = true;
  String title = 'Opacity Demo';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(title)),
      ),
      body: Center(
        child: AnimatedOpacity(
          //	If	the	widget	is	visible,	animate	to	0.0	(invisible).
          //	If	the	widget	is	hidden,	animate	to	1.0	(fully	visible).
          opacity: _visible ? 1.0 : 0.0,
          duration: const Duration(milliseconds: 500),
          //	The	green	box	must	be	a	child	of	the	AnimatedOpacity	widget.
          child: Container(
            width: 200.0,
            height: 200.0,
            color: Colors.green,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _visible = !_visible;
          });
        },
        tooltip: 'Toggle	Opacity',
        child: const Icon(Icons.flip),
      ),
    );
  }
}
