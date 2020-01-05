import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class FoodApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          color: Color(0xFFFFFFFF),
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
      children: <Widget>[appHeader, appBanner],
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

Widget appBanner = Container(
  height: 300.0,
  padding: const EdgeInsets.symmetric(vertical: 7.5),
  child: Center(
      child: CarouselSlider(
    height: 290.0,
    items: imageList.map((i) {
      return Builder(builder: (BuildContext context) {
        return Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.symmetric(horizontal: 5.0),
            decoration: BoxDecoration(
                color: Color(0xFFFFD87D),
                borderRadius: BorderRadius.circular(10.0)),
            child: Stack(
              fit: StackFit.expand,
              children: <Widget>[
                ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image(
                      image: AssetImage(i),
                      fit: BoxFit.cover,
                      repeat: ImageRepeat.noRepeat,
                    )),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(10.0)),
                ),
              ],
            ));
      });
    }).toList(),
  )),
);

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
