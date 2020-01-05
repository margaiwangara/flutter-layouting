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
          child: mainRow,
        )
      ],
    );
  }
}

Row mainRow = Row(
  mainAxisSize: MainAxisSize.max,
  crossAxisAlignment: CrossAxisAlignment.start,
  children: <Widget>[Expanded(child: appHeader)],
);

Text _myText(String content, String fontFamily, Color color,
    FontWeight fontWeight, double fontSize) {
  return Text(
    content,
    textDirection: TextDirection.ltr,
    style: TextStyle(
        color: color,
        fontWeight: fontWeight,
        fontFamily: fontFamily,
        fontSize: fontSize),
  );
}

Widget appHeader = Container(
  padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
  child: Row(
    mainAxisSize: MainAxisSize.max,
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      Column(
        children: <Widget>[
          _myText('China', 'Montserrat', Colors.black, FontWeight.w700, 25.0),
        ],
      ),
      Column(
        children: <Widget>[
          FloatingActionButton(
            onPressed: () {},
            mini: true,
            backgroundColor: Colors.cyan,
            child: Icon(
              Icons.search,
              color: Colors.white,
              size: 20.0,
            ),
          )
        ],
      )
    ],
  ),
);
