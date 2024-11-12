import 'package:flutter/material.dart';
import 'package:mybeautyiq/controller_image.dart';

class RowProfileType extends StatelessWidget {
  const RowProfileType(
      {Key? key,
      required this.nameImage,
      required this.sizeImage,
      required this.tittle,
      required this.description})
      : super(key: key);

  final String nameImage;
  final double sizeImage;
  final String tittle;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          alignment: Alignment.center,
          child: LoadImage(
              heightImage: sizeImage,
              widthImage: sizeImage,
              nameImage: nameImage),
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.topLeft,
                child: Text(tittle,
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                      fontSize: 16,
                    )),
              ),
              const SizedBox(
                height: 7,
              ),
              Text(description,
                  textAlign: TextAlign.left,
                  style: const TextStyle(color: Colors.black, fontSize: 12)),
            ],
          ),
        ),
      ],
    );
  }
}
