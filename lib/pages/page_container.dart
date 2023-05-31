import 'package:flutter/material.dart';
import 'package:mobile/pages/setting_page.dart';

class PageContainer extends StatefulWidget {
  const PageContainer({super.key});

  @override
  State<PageContainer> createState() => _PageContainerState();
}

class _PageContainerState extends State<PageContainer> {
  void _showSettingPage() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const SettingPage(),
        fullscreenDialog: true,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
