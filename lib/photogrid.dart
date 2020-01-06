import 'package:flutter/material.dart';

class PhotoGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      children: <Widget>[
        _myImage("me1.jpg"),
        _myImage("me2.jpg"),
        _myImage("me3.jpg"),
        _myImage("me4.jpg"),
        _myImage("me5.jpg"),
        _myImage("pic1.jpg"),
        _myImage("pic2.jpeg"),
        _myImage("pic3.jpg"),
      ],
    );
  }
}

Image _myImage(String imageName) {
  return new Image(
    image: AssetImage("assets/images/$imageName"),
    fit: BoxFit.cover,
    repeat: ImageRepeat.noRepeat,
    alignment: Alignment.center,
  );
}
