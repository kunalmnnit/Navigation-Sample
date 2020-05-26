import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_fire/utilities/routing_constants.dart';

class First extends StatelessWidget {
  const First({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("First Page"),
        ),
        body: Center(
            child: RaisedButton(
          color: Colors.blue,
          child: Text("Next"),
          onPressed: () {
            Navigator.pushReplacementNamed(context, SecondRoute,
                arguments: 'Hello from home');
          },
        )));
  }
}
