import 'package:flutter/material.dart';
import 'package:posts/screens/add_barter_categories.dart';
import 'package:posts/screens/add_post.dart';

class TabNavigatorRoutes {
  static const String root = '/';
  static const String detail = '/detail';
}

class TabNavigator extends StatefulWidget {
  const TabNavigator({required this.navigatorKey, required this.tabItem});
  final GlobalKey<NavigatorState> navigatorKey;
  final String tabItem;

  @override
  _TabNavigatorState createState() => _TabNavigatorState();
}

class _TabNavigatorState extends State<TabNavigator> {
  @override
  Widget build(BuildContext context) {
    Widget? child;
    if (widget.tabItem == "Page1") {
      child = const AddPost();
    } else if (widget.tabItem == "Page2") {
      child = const AddBarterCategories();
    } else if (widget.tabItem == "Page3") {
      child = const AddPost();
    } else if (widget.tabItem == "Page4") {
      child = const AddBarterCategories();
    } else if (widget.tabItem == "Page5") {
      child = const AddPost();
    }

    return Navigator(
      key: widget.navigatorKey,
      onGenerateRoute: (routeSettings) {
        return MaterialPageRoute(builder: (context) => child!);
      },
    );
  }
}
