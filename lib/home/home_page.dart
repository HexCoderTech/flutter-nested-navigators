import 'package:flutter/material.dart';

import 'package:nested_navigators/feed/feed_index_page.dart';
import 'package:nested_navigators/navigators.dart';
import 'package:nested_navigators/profile/profile_index_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: const [
          FeedIndexPage(),
          ProfileIndexPage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        key: bottomNavigatorKey,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.feed),
            label: 'Feed',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
