import 'package:flutter/material.dart';
import 'package:mybeautyiq/controller_image.dart';
import 'package:mybeautyiq/helpers/helper_colors.dart';

class AppBarBeauty extends StatelessWidget {
  const AppBarBeauty({
    Key? key,
    required this.heightAppBar,
  }) : super(key: key);
  final double heightAppBar;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: heightAppBar,
      padding: const EdgeInsets.all(8.0),
      decoration: const BoxDecoration(
        color: PersonalColors.appBarColor,
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.only(
              right: 20,
            ),
            child: const LoadImage(
                nameImage: "userPhoto.png", widthImage: 50, heightImage: 50),
          ),
          const Expanded(
            child: Text(
              "Welcome,Jane Doe",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
