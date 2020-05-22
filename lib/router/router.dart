import 'package:flutter/material.dart';
import '../page/homePage.dart';
import '../page/404.dart';

/* demo */
import '../demo/index.dart';
import '../demo/Text.dart';
import '../demo/button.dart';
import '../demo/imgAndIcon.dart';
import '../demo/input.dart';
import '../demo/container.dart';

final routes = {
  '/': (context) => MyHomePage(),
  '/notFind': (context) => NotFind(),
  /* demo */
  '/demoEntry': (context) => DemoEntry(),
  '/textDemo': (context, {arguments}) => TextDemo(),
  '/buttonDemo': (context, {arguments}) => ButtonDemo(),
  '/imgAndIcon': (context, {arguments}) => ImgAndIcon(),
  '/inputDemo': (context, {arguments}) => InputDemo(),
  '/containerDemo': (context, {arguments}) => ContainerDemo(),
};

/* 路由拦截 */
Function onGenerateRoute = (RouteSettings settings) {
  final String routeName = settings.name;
  final Function buildContext = routes[routeName];
  Route route;
  // print(buildContext);
  if (buildContext != null) {
    if (settings.arguments != null) {
      route = MaterialPageRoute(
          builder: (context) =>
              buildContext(context, arguments: settings.arguments));
    } else {
      route = MaterialPageRoute(builder: (context) => buildContext(context));
    }
  } else {
    route =
        MaterialPageRoute(builder: (context) => routes['/notFind'](context));
  }
  return route;
};
