import 'package:flutter/material.dart';

class PhotoGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      children: imageList(context),
    );
  }

  static List<String> images = [
    "me1.jpg",
    "me2.jpg",
    "me3.jpg",
    "me4.jpg",
    "me5.jpg",
    "pic1.jpg",
    "pic2.jpeg",
    "pic3.jpg"
  ];

  static List<InkWell> imageList(BuildContext context) {
    return images.map((i) {
      return _myImage(i, context);
    }).toList();
  }

  static InkWell _myImage(String imageName, BuildContext context) {
    return new InkWell(
        onTap: () {
          Scaffold.of(context).showSnackBar(SnackBar(
            content: Text('Tapped'),
            duration: Duration(seconds: 2),
          ));
        },
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/$imageName"),
                  fit: BoxFit.cover,
                  repeat: ImageRepeat.noRepeat,
                  alignment: Alignment.center,
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.6), BlendMode.dst))),
        ));
  }
}
