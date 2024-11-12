import 'package:flutter/material.dart';

class LoadImage extends StatelessWidget {
  const LoadImage({Key? key,required this.nameImage,required this.widthImage,required this.heightImage}) : super(key: key);

  final String nameImage;
  final double widthImage;
  final double heightImage;

  @override
  Widget build(BuildContext context) {
    var assetsImage = AssetImage('assets/images/$nameImage');
    Image image = Image(
      image: assetsImage,
      width: widthImage,
      height: heightImage,
    );
    return image;
  }
}