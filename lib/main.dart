import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:wakelock/wakelock.dart';

// my packages
import 'layouts.dart';

void main() => runApp(LayoutMain());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // wakelock
    Wakelock.enable();

    // recurring items
    // final Color primaryColor = Color.fromRGBO(29, 230, 199, 1);
    // final Color secondaryColor = Color.fromRGBO(27, 20, 53, 1);

    return MaterialApp(
      title: 'Flutter Layouting',
      home: Scaffold(
        body: Container(
            child: Row(children: <Widget>[
          Expanded(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                Container(
                    padding: const EdgeInsets.only(top: 35.0, bottom: 15.0),
                    decoration: BoxDecoration(
                      color: Colors.pinkAccent,
                      boxShadow: [
                        BoxShadow(color: Colors.black26, blurRadius: 5.0)
                      ],
                    ),
                    child: Text(
                      'Welcome To Flutter Layouts',
                      textDirection: TextDirection.ltr,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'Merriweather',
                          fontSize: 20.0,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0.5,
                          color: Colors.white),
                    )),
                Container(
                    padding: const EdgeInsets.only(
                        left: 10.0, right: 10.0, top: 10.0),
                    child: Image(
                      image: AssetImage('assets/images/pic1.jpg'),
                      fit: BoxFit.fill,
                      repeat: ImageRepeat.noRepeat,
                      alignment: Alignment.center,
                    )),
                titleSection,
                bodySection
              ]))
        ])),
      ),
    );
  }
}

// Text Styling
TextStyle _textStyling(
    String fontFamily, double fontSize, Color color, FontWeight fontWeight) {
  return TextStyle(
      fontFamily: fontFamily,
      fontWeight: fontWeight,
      fontSize: fontSize,
      color: color);
}

Text _myText(String content, TextDirection textDirection, TextStyle style) {
  return Text(
    content,
    textDirection: textDirection,
    style: style,
  );
}

// Title Section
Widget titleSection = Container(
  padding: const EdgeInsets.only(left: 10.0, top: 10.0, right: 10.0),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _myText('How To Save A Life', TextDirection.ltr,
              _textStyling('Montserrat', 18.0, Colors.black, FontWeight.w700)),
          _myText(
              'John Doe',
              TextDirection.ltr,
              _textStyling(
                  'Montserrat', 15.0, Colors.grey[500], FontWeight.w400))
        ],
      ),
      Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                  child: Icon(
                Icons.bookmark,
                color: Colors.pink,
              )),
              Container(
                  child: Icon(
                Icons.thumb_up,
                color: Colors.pink,
              ))
            ],
          )
        ],
      ),
    ],
  ),
);

// Card Body
Widget bodySection = Container(
  padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
  child: _myText(
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Vitae suscipit tellus mauris a.",
      TextDirection.ltr,
      _textStyling('Montserrat', 15.0, Colors.black54, FontWeight.w400)),
);
