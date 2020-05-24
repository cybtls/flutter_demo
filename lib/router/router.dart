import 'package:flutter/material.dart';
import '../page/homePage.dart';
import '../page/404.dart';

/* demo */
import '../demo/index.dart';
import '../demo/text.dart';
import '../demo/button.dart';
import '../demo/imgAndIcon.dart';
import '../demo/input.dart';
import '../demo/container.dart';
import '../demo/row.dart';
import '../demo/column.dart';
import '../demo/stackPositioned.dart';
import '../demo/listView.dart';
import '../demo/gridView.dart';
import '../demo/customScrollView.dart';
import '../demo/http.dart';

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
  '/rowDemo': (context, {arguments}) => RowDemo(),
  '/columnDemo': (context, {arguments}) => ColumnDemo(),
  '/stackPositionedDemo': (context, {arguments}) => StackPositionedDemo(),
  '/listViewDemo': (context, {arguments}) => ListViewDemo(),
  '/gridViewDemo': (context, {arguments}) => GridViewDemo(),
  '/customScrollViewDemo': (context, {arguments}) => CustomScrollViewDemo(),
  '/httpDemoDemo': (context, {arguments}) => HttpDemo(),
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
