import 'package:flutter/material.dart';

class DemoFeedPage extends StatelessWidget {
  const DemoFeedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Feed Page'),
      ),
      body: SafeArea(
        child: Center(
          child: const Text('Demo Feed Page'),
        ),
      ),
    );
  }
}
