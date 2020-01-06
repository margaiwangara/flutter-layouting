import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ScrollApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: const EdgeInsets.symmetric(vertical: 0.0),
      constraints:
          BoxConstraints(minHeight: MediaQuery.of(context).size.height * 0.5),
      child: CarouselSlider(
        enlargeCenterPage: true,
        items: [1, 2, 3, 4, 5].map((i) {
          return Builder(
            builder: (BuildContext context) {
              return new Stack(
                alignment: Alignment.bottomCenter,
                overflow: Overflow.visible,
                children: <Widget>[
                  Positioned(
                      child: Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(horizontal: 5.0),
                          decoration: BoxDecoration(
                              color: Color(0xFFFFD87D),
                              borderRadius: BorderRadius.circular(10.0)))),
                  Positioned(
                    bottom: -50.0,
                    width: 250.0,
                    height: 100.0,
                    child: floatingCard,
                  )
                ],
              );
            },
          );
        }).toList(),
      ),
    );
  }
}

Card floatingCard = Card(
  elevation: 8.0,
  child: Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      Text('Title of item',
          textDirection: TextDirection.ltr,
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15.0)),
      Text('Rating of item',
          textDirection: TextDirection.ltr,
          style: TextStyle(fontWeight: FontWeight.w300, fontSize: 12.0)),
      Text('Some other details',
          textDirection: TextDirection.ltr,
          style: TextStyle(fontWeight: FontWeight.w300, fontSize: 12.0)),
    ],
  ),
);
