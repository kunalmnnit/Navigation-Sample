import 'package:flutter/material.dart';
import 'package:flutter_fire/screens/first.dart';
import 'package:flutter_fire/screens/second.dart';
import 'routing_constants.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case FirstRoute:
      return MaterialPageRoute(builder: (context) => First());
    case SecondRoute:
      return PageRouteBuilder(
          settings: routeSettings,
          transitionDuration: Duration(milliseconds: 500),
          transitionsBuilder: (BuildContext context,
              Animation<double> animation,
              Animation<double> secAnimation,
              Widget child) {
            animation =
                CurvedAnimation(parent: animation, curve: Curves.elasticInOut);
            return ScaleTransition(
              scale: animation,
              child: child,
              alignment: Alignment.center,
            );
          },
          pageBuilder: (BuildContext context, Animation<double> animation,
              Animation<double> secAnimation) {
            return Second();
          });
    default:
      return MaterialPageRoute(builder: (context) => First());
  }
}
