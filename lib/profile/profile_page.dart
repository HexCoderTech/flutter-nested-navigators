import 'package:flutter/material.dart';

import 'package:nested_navigators/navigators.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const Text('Profile Page'),
              ElevatedButton(
                onPressed: () {
                  // Navigator.of(context).pushNamed('/profile');
                  profileNavigatorKey.currentState!.pushNamed('/profile');
                },
                child: const Text('Go to Profile'),
              ),
              ElevatedButton(
                onPressed: () {
                  var bar =
                      bottomNavigatorKey.currentWidget as BottomNavigationBar;
                  bar.onTap!(0);
                  feedNavigatorKey.currentState!.pushNamed('/feed');
                },
                child: const Text('Go to Demo Feed'),
              ),
              ElevatedButton(
                onPressed: () {
                  globalNavigatorKey.currentState!.pushNamed('/feed');
                },
                child: const Text('Fullscreen Profile'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
