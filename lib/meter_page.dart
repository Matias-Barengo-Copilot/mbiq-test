import 'package:flutter/material.dart';
import 'package:mybeautyiq/class_input.dart';
import 'package:mybeautyiq/controller_image.dart';
import 'package:mybeautyiq/helpers/helper_colors.dart';
import 'package:mybeautyiq/widgets/app_bar.dart';

class MeterPage extends StatefulWidget {
  const MeterPage({Key? key}) : super(key: key);

  @override
  State<MeterPage> createState() => _MeterPageState();
}

class _MeterPageState extends State<MeterPage> {
  @override
  Widget build(BuildContext context) {
    const double heightAppBar = 56;

    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(heightAppBar),
        child: AppBarBeauty(heightAppBar: heightAppBar),
      ),
      body: Container(
        color: PersonalColors.appBarColor,
        padding: const EdgeInsets.only(
          top: 30,
          bottom: 30,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  child: const LoadImage(
                      heightImage: 280,
                      widthImage: 280,
                      nameImage: "beautyLevel.png"),
                ),
                const Text(
                    "take more classes to unlock new levels and grow your BeautyIQ!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                      fontSize: 18,
                    )),
              ],
            ),
            Column(
              children: [
                SizedBox(
                  width: 300,
                  child: Container(
                      width: double.infinity,
                      child: RawMaterialButton(
                        fillColor: const Color.fromARGB(255, 242, 230, 222),
                        elevation: 0.0,
                        padding: const EdgeInsets.symmetric(vertical: 20.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40.0),
                        ),
                        onPressed: () => {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ClassInput(),
                            ),
                          )
                        },
                        child: const Text("BROWSE CLASSES",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18.0,
                            )),
                      )),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 300,
                  child: Container(
                      width: double.infinity,
                      child: RawMaterialButton(
                        fillColor: const Color.fromARGB(255, 242, 230, 222),
                        elevation: 0.0,
                        padding: const EdgeInsets.symmetric(vertical: 20.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40.0),
                        ),
                        onPressed: () => print("next"),
                        child: const Text("MY CLASSES",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18.0,
                            )),
                      )),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
