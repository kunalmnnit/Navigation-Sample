import 'package:flutter/material.dart';
import 'package:flutter_fire/utilities/router.dart' as router;
import 'package:flutter_fire/utilities/routing_constants.dart';

void main() {
  runApp(MaterialApp(
    title: "Demo",
    debugShowCheckedModeBanner: false,
    onGenerateRoute: router.generateRoute,
    initialRoute: FirstRoute,
  ));
}
