import 'package:flutter/material.dart';
import 'package:wakelock/wakelock.dart';

class LayoutMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Wakelock
    Wakelock.enable();
    return MaterialApp(
      title: 'Card Layout',
      home: Scaffold(
        body: ListView(
          children: <Widget>[
            Center(
              child: Container(
                margin: const EdgeInsets.only(top: 30.0),
                width: 325.0,
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(color: Colors.black26, blurRadius: 5.0)
                ], color: Colors.white),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Column(
                        children: <Widget>[
                          Image(
                            image: AssetImage('assets/images/pic1.jpg'),
                            fit: BoxFit.fitWidth,
                          ),
                          cardBody
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class BookmarkWidget extends StatefulWidget {
  @override
  _BookmarkWidgetState createState() => _BookmarkWidgetState();
}

class _BookmarkWidgetState extends State<BookmarkWidget> {
  bool _isBookmarked = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            IconButton(
              icon: (_isBookmarked
                  ? Icon(Icons.bookmark)
                  : Icon(Icons.bookmark_border)),
              iconSize: 20.0,
              color: Colors.pink,
              onPressed: _toggleBookmarked,
            )
          ],
        )
      ],
    );
  }

  void _toggleBookmarked() {
    setState(() {
      _isBookmarked == false ? _isBookmarked = true : _isBookmarked = false;
    });
  }
}

// trying stacks
Stack myStack = Stack(
  alignment: AlignmentDirectional.topStart,
  fit: StackFit.loose,
  children: <Widget>[
    Container(
      color: Colors.black12,
    )
  ],
);
// toggle bookmarked

Widget cardBody = Container(
  padding: const EdgeInsets.all(10.0),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.start,
    mainAxisSize: MainAxisSize.max,
    children: <Widget>[
      Expanded(
          child: Column(
        children: <Widget>[cardBodyTop, cardBodyCenter, cardBodyBottom],
      )),
    ],
  ),
);

Widget cardBodyTop = Container(
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _myText('posted on 21st April 2019'.toUpperCase(), 'Montserrat', 10.0,
              FontWeight.w400, Colors.grey[400]),
          SizedBox(height: 2.5),
          _myText('going hard or going home'.toUpperCase(), 'Montserrat', 15.0,
              FontWeight.w700, Colors.black),
        ],
      )
    ],
  ),
);

Widget cardBodyCenter = Container(
  padding: const EdgeInsets.symmetric(vertical: 6.0),
  child: _myText(
      "When the app first launches, the star is solid red, indicating that this lake has previously been favorited. The number next to the star indicates that 41 people have favorited this lake",
      'Montserrat',
      13.0,
      FontWeight.w300,
      Colors.black54),
);

Widget cardBodyBottom = Container(
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[cardBodyBottomLeft, BookmarkWidget()],
  ),
);

Column cardBodyBottomLeft = Column(
  children: <Widget>[
    Row(
      children: <Widget>[
        Icon(
          Icons.thumb_up,
          color: Colors.pink[300],
          size: 20.0,
        ),
        SizedBox(width: 2.5),
        Icon(
          Icons.thumb_down,
          color: Colors.pink[500],
          size: 20.0,
        ),
      ],
    )
  ],
);

Column cardBodyBottomRight = Column(
  children: <Widget>[
    Row(
      children: <Widget>[
        Icon(
          Icons.bookmark_border,
          color: Colors.pink,
          size: 20.0,
        )
      ],
    )
  ],
);

// Text
Text _myText(String content, String fontFamily, double fontSize,
    FontWeight fontWeight, Color fontColor) {
  return Text(
    content,
    textDirection: TextDirection.ltr,
    softWrap: true,
    style: TextStyle(
      fontFamily: fontFamily,
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: fontColor,
    ),
  );
}
