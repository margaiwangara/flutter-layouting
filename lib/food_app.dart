import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class FoodApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          color: Color(0xFFF1F1F1),
          constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width,
              minHeight: MediaQuery.of(context).size.height),
          child: mainRow,
        )
      ],
    );
  }
}

// yellowish = FFD87D
// bluish = 82c5bc
Row mainRow = Row(
  mainAxisSize: MainAxisSize.max,
  crossAxisAlignment: CrossAxisAlignment.start,
  children: <Widget>[
    Expanded(
        child: Column(
      children: <Widget>[appHeader, appHero],
    )),
  ],
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

List imageList = [
  "assets/images/me1.jpg",
  "assets/images/me2.jpg",
  "assets/images/me3.jpg",
  "assets/images/me4.jpg",
  "assets/images/me5.jpg"
];

Widget appHero = Container(
  height: 250.0,
  padding: const EdgeInsets.symmetric(vertical: 7.5),
  child: Center(
      child: CarouselSlider(
    enlargeCenterPage: true,
    height: 240.0,
    items: imageList.map((i) {
      return Builder(builder: (BuildContext context) {
        return Stack(
          overflow: Overflow.visible,
          alignment: Alignment.bottomCenter,
          children: <Widget>[
            Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 5.0),
                decoration: BoxDecoration(
                    color: Color(0xFFFFD87D),
                    borderRadius: BorderRadius.circular(10.0))),
            Positioned(
                bottom: -50.0,
                child: Container(
                  width: 100.0,
                  height: 100.0,
                  color: Color(0xFF82C5BC),
                ))
          ],
        );
      });
    }).toList(),
  )),
);

Column heroCard = Column(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  crossAxisAlignment: CrossAxisAlignment.start,
  mainAxisSize: MainAxisSize.max,
  children: <Widget>[
    _myText("Fruit nutrition meal", "Montserrat", Colors.black, FontWeight.w700,
        18.0),
    heroCardCenter,
    heroCardBottom
  ],
);

Row heroCardCenter = Row(
  children: <Widget>[
    _myIcon(Icons.star, 15.0, Color(0xFF82C5BC)),
    _myIcon(Icons.star, 15.0, Color(0xFF82C5BC)),
    _myIcon(Icons.star, 15.0, Color(0xFF82C5BC)),
    _myIcon(Icons.star, 15.0, Color(0xFF82C5BC)),
    _myIcon(Icons.star_border, 15.0, Color(0xFF82C5BC)),
    SizedBox(width: 5.0),
    _myText('4.0', 'Montserrat', Colors.grey[400], FontWeight.w300, 13.0),
    SizedBox(width: 5.0),
    _myText(
        '1200 Comments', 'Montserrat', Colors.grey[400], FontWeight.w300, 13.0),
  ],
);

Icon _myIcon(IconData icon, double size, Color color) {
  return new Icon(
    icon,
    color: color,
    size: size,
  );
}

Row heroCardBottom = Row(
  mainAxisSize: MainAxisSize.max,
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: <Widget>[
    Column(
      children: <Widget>[
        Container(
          color: Colors.cyan,
        )
      ],
    )
    // Text(
    //   'x'.toUpperCase(),
    //   textDirection: TextDirection.ltr,
    //   style: TextStyle(fontSize: 10.0),
    // ),
    // Text(
    //   'y'.toUpperCase(),
    //   textDirection: TextDirection.ltr,
    //   style: TextStyle(fontSize: 10.0),
    // ),
    // Text(
    //   'z'.toUpperCase(),
    //   textDirection: TextDirection.ltr,
    //   style: TextStyle(fontSize: 10.0),
    // )
  ],
);

Container _heroCardBottomContainer(String content, IconData icon,
    Color iconColor, Color textColor, double iconSize, double textSize) {
  return new Container(
    child: Row(
      children: <Widget>[
        _myIcon(icon, iconSize, iconColor),
        SizedBox(
          width: 2.5,
        ),
        _myText(content, 'Montserrat', textColor, FontWeight.w300, iconSize)
      ],
    ),
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
            backgroundColor: Color(0xFF82C5BC),
            elevation: 5.0,
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
