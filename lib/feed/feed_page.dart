import 'package:flutter/material.dart';

class FeedPage extends StatelessWidget {
  const FeedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const Text('Feed Page'),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/feed');
                },
                child: const Text('Go to Feed'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
