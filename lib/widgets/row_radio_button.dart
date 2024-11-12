import 'package:flutter/material.dart';
import 'package:mybeautyiq/controller_image.dart';

class RowRadioButton extends StatelessWidget {
  const RowRadioButton(
      {Key? key,
      required this.nameImage,
      required this.text,
      required this.fontSize,
      required this.colorText})
      : super(key: key);

  final String nameImage;
  final String text;
  final double fontSize;
  final Color colorText;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        LoadImage(
          heightImage: 20,
          widthImage: 20,
          nameImage: nameImage,
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: Text(text,
              style: TextStyle(
                fontWeight: FontWeight.normal,
                color: colorText,
                fontSize: fontSize,
              )),
        )
      ],
    );
  }
}
