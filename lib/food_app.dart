import 'package:flutter/material.dart';

class FoodApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          color: Colors.white,
          constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width,
              minHeight: MediaQuery.of(context).size.height),
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: mainRow,
        )
      ],
    );
  }
}

Row mainRow = Row(
  mainAxisSize: MainAxisSize.min,
  mainAxisAlignment: MainAxisAlignment.start,
  crossAxisAlignment: CrossAxisAlignment.start,
  children: <Widget>[
    Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'This is another text',
            textDirection: TextDirection.ltr,
          ),
          Text(
            'This is another another text',
            textDirection: TextDirection.ltr,
          ),
        ],
      ),
    )
  ],
);
