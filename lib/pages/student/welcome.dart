import 'package:flutter/material.dart';
import 'package:mybeautyiq/class_input.dart';
import 'package:mybeautyiq/controller_image.dart';
import 'package:mybeautyiq/helpers/helper_colors.dart';

class WelcomeStudent extends StatelessWidget {
  final Function changeView;
  WelcomeStudent({required this.changeView});

  @override
  Widget build(BuildContext context) {
    const double heightAppBar = 56;
    return Scaffold(
      body: Container(
          color: PersonalColors.appBarColor,
          padding: const EdgeInsets.only(
            top: 30,
            bottom: 30,
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 20, 20, 10),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 30.0),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Column(
                              children: <Widget>[
                                Row(
                                  children: const <Widget>[
                                    Text('WelcomeStudent Back,',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w400)),
                                  ],
                                ),
                                Row(
                                  children: const <Widget>[
                                    Text('Korinthia',
                                        style: TextStyle(
                                            color: PersonalColors.colorPrimary,
                                            fontSize: 30,
                                            fontWeight: FontWeight.w700)),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      // RawMaterialButton(
                      //     constraints: BoxConstraints.tight(const Size(45, 45)),
                      //     fillColor: Colors.white,
                      //     elevation: 5.0,
                      //     shape: RoundedRectangleBorder(
                      //       borderRadius: BorderRadius.circular(10.0),
                      //     ),
                      //     onPressed: null,
                      //     child: const Icon(
                      //       Icons.notifications_none,
                      //     )),
                    ]),
              ),
              Column(
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
                      const Text("Welcome, Korinthia!",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: PersonalColors.colorPrimary,
                            fontSize: 30,
                          )),
                      const SizedBox(
                        height: 15,
                      ),
                      const Text(
                          "Take more classes to unlock new\nlevels and grow yout BeautyIQ!",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Column(
                    children: [
                      SizedBox(
                        width: 300,
                        child: Container(
                            width: double.infinity,
                            child: RawMaterialButton(
                              fillColor:
                                  const Color.fromARGB(255, 242, 230, 222),
                              elevation: 8.0,
                              padding:
                                  const EdgeInsets.symmetric(vertical: 20.0),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40.0),
                              ),
                              onPressed: () => {
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(
                                //     builder: (context) => ClassInput(),
                                //   ),
                                // )
                              },
                              child: const Text("Go To Class Dashboard",
                                  style: TextStyle(
                                    color: PersonalColors.colorPrimary,
                                    fontWeight: FontWeight.w500,
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
                              fillColor:
                                  const Color.fromARGB(255, 242, 230, 222),
                              elevation: 8.0,
                              padding:
                                  const EdgeInsets.symmetric(vertical: 20.0),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40.0),
                              ),
                              onPressed: () => {changeView(2)},
                              child: const Text("Search Classes",
                                  style: TextStyle(
                                    color: PersonalColors.colorPrimary,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18.0,
                                  )),
                            )),
                      )
                    ],
                  )
                ],
              ),
            ],
          )),
    );
  }
}
