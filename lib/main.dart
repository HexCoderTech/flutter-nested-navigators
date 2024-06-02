import 'package:flutter/material.dart';

import 'package:nested_navigators/feed/demo_feed_page.dart';
import 'package:nested_navigators/home/home_page.dart';
import 'package:nested_navigators/navigators.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: globalNavigatorKey,
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/':
            return MaterialPageRoute(
              builder: (context) => const HomePage(),
            );
          case '/feed':
            return MaterialPageRoute(
              builder: (context) => const DemoFeedPage(),
            );

          default:
            return MaterialPageRoute(
              builder: (context) => const HomePage(),
            );
        }
      },
    );
  }
}
