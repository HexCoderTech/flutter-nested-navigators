import 'package:flutter/material.dart';

import 'package:nested_navigators/feed/demo_feed_page.dart';
import 'package:nested_navigators/feed/feed_page.dart';
import 'package:nested_navigators/navigators.dart';

class FeedIndexPage extends StatelessWidget {
  const FeedIndexPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: feedNavigatorKey,
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/':
            return MaterialPageRoute(
              builder: (context) => const FeedPage(),
            );
          case '/feed':
            return MaterialPageRoute(
              builder: (context) => const DemoFeedPage(),
            );
          default:
            return MaterialPageRoute(
              builder: (context) => const FeedPage(),
            );
        }
      },
    );
  }
}
