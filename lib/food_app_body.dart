import 'package:flutter/material.dart';

class FoodAppBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width,
          constraints:
              BoxConstraints(minHeight: MediaQuery.of(context).size.height),
          padding: const EdgeInsets.only(
              top: 20.0, bottom: 10.0, left: 10.0, right: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text('Popular',
                      textDirection: TextDirection.ltr,
                      style: Theme.of(context).textTheme.display1),
                  SizedBox(
                    width: 5.0,
                  ),
                  Icon(
                    Icons.stop,
                    size: 5,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Text(
                    'Food pairing',
                    textDirection: TextDirection.ltr,
                    style: Theme.of(context).textTheme.body1,
                  )
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                children: <Widget>[
                  Expanded(
                      flex: 2,
                      child: Container(
                        width: 125.0,
                        height: 125.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Theme.of(context).primaryColor),
                        child: Center(
                          child: SizedBox(
                            height: 75.0,
                            width: 75.0,
                            child: Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  // border: Border.all(color: Theme.of(context).primaryColor),
                                  color: Theme.of(context).accentColor,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black12,
                                        offset: new Offset(-2.5, 7),
                                        blurRadius: 5.0)
                                  ]),
                            ),
                          ),
                        ),
                      )),
                  Expanded(
                      flex: 3,
                      child: Container(
                        height: 100.0,
                        padding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 10.0),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10.0),
                                bottomRight: Radius.circular(10.0)),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black12,
                                  offset: new Offset(0, 0.75),
                                  blurRadius: 15)
                            ]),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              'Cumin Barbeque',
                              textDirection: TextDirection.ltr,
                              style: Theme.of(context).textTheme.title,
                            ),
                            Text(
                              'With chinese chars.',
                              textDirection: TextDirection.ltr,
                              style: Theme.of(context).textTheme.subtitle,
                              softWrap: true,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  child: Row(
                                    children: <Widget>[
                                      Container(
                                        child: Row(
                                          children: <Widget>[
                                            _myIcon(Icons.refresh, 13.0,
                                                Theme.of(context).accentColor),
                                            SizedBox(
                                              width: 2.5,
                                            ),
                                            new Text(
                                              'Normal',
                                              textDirection: TextDirection.ltr,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .subtitle,
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
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .subtitle,
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
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .subtitle,
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ))
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}

Icon _myIcon(IconData icon, double iconSize, Color iconColor) {
  return new Icon(
    icon,
    size: iconSize,
    color: iconColor,
  );
}
