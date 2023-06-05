import 'package:flutter/material.dart';
import 'package:mobile/utils/ListItem.dart';

import '../utils/HeadingItem.dart';
import '../utils/MessageItem.dart';

class Bai2 extends StatelessWidget {
  const Bai2({super.key});

  @override
  Widget build(BuildContext context) {
    final items = List<ListItem>.generate(
      1000,
      (i) => i % 6 == 0
          ? HeadingItem('Heading $i')
          : MessageItem('Sender $i', 'Message body $i'),
    );
    String title = 'Mixed List';
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(title)),
      ),
      body: ListView.builder(itemBuilder: (context, index) {
        final item = items[index];
        return ListTile(
          title: item.buildTitle(context),
          subtitle: item.buildSubtitle(context),
        );
      }),
    );
  }
}
