import 'package:flutter/material.dart';
import 'package:nested_navigators/navigators.dart';

import 'package:nested_navigators/profile/demo_profile_page.dart';
import 'package:nested_navigators/profile/profile_page.dart';

class ProfileIndexPage extends StatelessWidget {
  const ProfileIndexPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: profileNavigatorKey,
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/':
            return MaterialPageRoute(
              builder: (context) => const ProfilePage(),
            );
          case '/profile':
            return MaterialPageRoute(
              builder: (context) => const DemoProfilePage(),
            );
          default:
            return MaterialPageRoute(
              builder: (context) => const ProfilePage(),
            );
        }
      },
    );
  }
}
