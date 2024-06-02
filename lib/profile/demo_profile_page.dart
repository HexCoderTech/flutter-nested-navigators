import 'package:flutter/material.dart';

class DemoProfilePage extends StatelessWidget {
  const DemoProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile Page'),
      ),
      body: const SafeArea(
        child: Center(
          child: Text('Demo Profile Page'),
        ),
      ),
    );
  }
}
