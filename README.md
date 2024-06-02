# nested_navigators

This is a Flutter project that demonstrates how to use nested navigators in Flutter.

For this, you have to nest the parent pages in a Navigator widget. All the child pages will be pushed to the Navigator widget of the parent page.

```dart
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Navigator(
        onGenerateRoute: (settings) {
          return MaterialPageRoute(
            builder: (context) {
              switch (settings.name) {
                case '/':
                  return FirstScreen();
                case '/second':
                  return SecondScreen();
                case '/third':
                  return ThirdScreen();
                default:
                  return FirstScreen();
              }
            },
          );
        },
      ),
    );
  }
}
```

You can easily call `Navigator.of(context).pushNamed('routeName')` to navigate to the child pages inside the parent page.

```dart
Navigator.of(context).pushNamed('/second');
```

If you want to use the root navigator of your app, in case you want to push something full screen, you can use `Navigator.of(context, rootNavigator: true).pushNamed('routeName')`. However, you should define a Navigator key for the root navigator and add it to your MaterialApp widget.

```dart
final GlobalKey<NavigatorState> globalNavigatorKey = GlobalKey<NavigatorState>();

...

MaterialApp(
  navigatorKey: rootNavigatorKey,
  home: HomeScreen(),
);
```
