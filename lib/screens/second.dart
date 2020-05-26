import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Second extends StatelessWidget {
  //final RouteSettings settings;
  const Second({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => onBackPressed(context),
      child: Scaffold(
          appBar: AppBar(
            title: Text('Second Page'),
          ),
          body: Center(
            child: Text(ModalRoute.of(context).settings.arguments),
          )),
    );
  }

  Future<bool> onBackPressed(BuildContext context) {
    return showDialog(
          context: context,
          builder: (context) => new AlertDialog(
            title: new Text('Are you sure?'),
            content: new Text('Do you want to exit the App'),
            actions: <Widget>[
              new FlatButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: new Text('No'),
              ),
              new FlatButton(
                onPressed: () => Navigator.of(context).pop(true),
                child: new Text('Yes'),
              ),
            ],
          ),
        ) ??
        false;
  }
}
