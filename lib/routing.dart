import 'package:flutter/material.dart';

class FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: RaisedButton(
      child: Text('First Route'),
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => SecondRoute()));
      },
    ));
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: RaisedButton(
      onPressed: () {
        Navigator.pop(context);
      },
      child: Text('Go Back'),
    ));
  }
}
