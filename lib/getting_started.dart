import 'package:flutter/material.dart';
import 'package:mybeautyiq/controller_image.dart';
import 'package:mybeautyiq/profile_type.dart';
import 'package:mybeautyiq/widgets/app_bar.dart';

class GettingStarted extends StatefulWidget {
  const GettingStarted({Key? key}) : super(key: key);

  @override
  State<GettingStarted> createState() => _GettingStartedState();
}

class _GettingStartedState extends State<GettingStarted> {
  @override
  Widget build(BuildContext context) {
    const double heightAppBar = 56;

    return Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(heightAppBar),
          child: AppBarBeauty(heightAppBar: heightAppBar),
        ),
        body: Container(
          color: Colors.white,
          padding: const EdgeInsets.only(
            top: 30,
            bottom: 30,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                child: const Text("Getting Started...",
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      color: Colors.black,
                      fontSize: 30,
                    )),
              ),
              Container(
                alignment: Alignment.center,
                child: const LoadImage(
                    heightImage: 228, widthImage: 280, nameImage: "logo2.png"),
              ),
              Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    child: const Text("How MyBeautyIQ Works",
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                          color: Colors.black,
                          fontSize: 25,
                        )),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: const Text(
                        "MyBeautyIQ allows beauty professionals to have access to all in person classes, any time, any place, on one platform",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.grey, fontSize: 18)),
                  ),
                ],
              ),
              Container(
                alignment: Alignment.center,
                child: GestureDetector(
                  onTap: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProfileType(),
                      ),
                    )
                  },
                  child: const LoadImage(
                      heightImage: 60,
                      widthImage: 60,
                      nameImage: "arrowRight2.png"),
                ),
              ),
            ],
          ),
        ));
  }
}
