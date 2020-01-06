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
                    child: Container(
                      width: 250.0,
                      constraints: BoxConstraints(minHeight: 125.0),
                      child: floatingCard(context),
                    ),
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

Card floatingCard(context) {
  return new Card(
    elevation: 8.0,
    child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Awesome meal',
                textDirection: TextDirection.ltr,
                style: Theme.of(context).textTheme.title),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      _myIcon(Icons.star, 15.0, Theme.of(context).accentColor),
                      _myIcon(Icons.star, 15.0, Theme.of(context).accentColor),
                      _myIcon(Icons.star, 15.0, Theme.of(context).accentColor),
                      _myIcon(Icons.star, 15.0, Theme.of(context).accentColor),
                      _myIcon(Icons.star_border, 13.0,
                          Theme.of(context).accentColor),
                      SizedBox(
                        width: 2.5,
                      ),
                      new Text(
                        '3.5',
                        textDirection: TextDirection.ltr,
                        style: Theme.of(context).textTheme.subtitle,
                      )
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: <Widget>[
                      _myIcon(
                          Icons.comment, 13.0, Theme.of(context).accentColor),
                      SizedBox(
                        width: 2.5,
                      ),
                      new Text(
                        '50',
                        textDirection: TextDirection.ltr,
                        style: Theme.of(context).textTheme.subtitle,
                      )
                    ],
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Container(
                  child: Row(
                    children: <Widget>[
                      _myIcon(
                          Icons.refresh, 13.0, Theme.of(context).accentColor),
                      SizedBox(
                        width: 2.5,
                      ),
                      new Text(
                        'Normal',
                        textDirection: TextDirection.ltr,
                        style: Theme.of(context).textTheme.subtitle,
                      )
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: <Widget>[
                      _myIcon(Icons.location_on, 13.0,
                          Theme.of(context).accentColor),
                      SizedBox(
                        width: 2.5,
                      ),
                      new Text(
                        '1.7km',
                        textDirection: TextDirection.ltr,
                        style: Theme.of(context).textTheme.subtitle,
                      )
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: <Widget>[
                      _myIcon(Icons.watch_later, 13.0,
                          Theme.of(context).accentColor),
                      SizedBox(
                        width: 2.5,
                      ),
                      new Text(
                        '32min',
                        textDirection: TextDirection.ltr,
                        style: Theme.of(context).textTheme.subtitle,
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        )),
  );
}

Icon _myIcon(IconData icon, double iconSize, Color iconColor) {
  return new Icon(
    icon,
    size: iconSize,
    color: iconColor,
  );
}
