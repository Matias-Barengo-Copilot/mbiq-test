import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:mybeautyiq/helpers/helper_colors.dart';
import 'package:mybeautyiq/pages/educator/tabs.dart';
import 'package:mybeautyiq/pages/student/tabs.dart';
import 'package:mybeautyiq/widgets/row_profile_type.dart';

class ProfileType extends StatefulWidget {
  const ProfileType({Key? key}) : super(key: key);

  @override
  State<ProfileType> createState() => _ProfileTypeState();
}

class _ProfileTypeState extends State<ProfileType> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: const Text("I am a...",
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      color: PersonalColors.colorPrimary,
                      fontSize: 30,
                    )),
              ),
              const Padding(padding: EdgeInsets.all(15.0)),
              const Center(
                child: Padding(
                  padding: EdgeInsets.only(left: 60.0, right: 60.0),
                  child: Text(
                    "This information will help us adapt you profile to your needs",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 16.0,
                    ),
                  ),
                ),
              ),
              const Padding(padding: EdgeInsets.all(10.0)),
              Container(
                constraints: const BoxConstraints(maxWidth: 750.0),
                padding: const EdgeInsets.only(left: 6, right: 6),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(18, 9, 18, 9),
                      child: GestureDetector(
                        onTap: () => {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => TabsPageStudent(),
                            ),
                          )
                        },
                        child: Card(
                          elevation: 15.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(12.0),
                            child: Column(
                              children: const <Widget>[
                                RowProfileType(
                                    nameImage: "iamImage1.png",
                                    sizeImage: 60,
                                    tittle: "Student",
                                    description:
                                        "I'm a licensed professional or beauty school student looking to expand my knowledge."),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(18, 9, 18, 9),
                      child: GestureDetector(
                        onTap: () => {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => TabsPageEducator(),
                            ),
                          )
                        },
                        child: Card(
                          elevation: 15.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(12.0),
                            child: Column(
                              children: const <Widget>[
                                RowProfileType(
                                    nameImage: "iamImage2.png",
                                    sizeImage: 60,
                                    tittle: "Educator",
                                    description:
                                        "I'm a licensed professional who seeks to teach courses"),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(18, 9, 18, 9),
                      child: GestureDetector(
                        onTap: () => {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => TabsPageStudent(),
                            ),
                          )
                        },
                        child: Card(
                          elevation: 15.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(12.0),
                            child: Column(
                              children: const <Widget>[
                                RowProfileType(
                                    nameImage: "iamImage3.png",
                                    sizeImage: 60,
                                    tittle: "Salon Owner",
                                    description:
                                        "I'm a licensed professional who has a space i'd like to rent out."),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(15),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(18, 9, 18, 9),
                      child: SizedBox(
                        child: Container(
                            width: double.infinity,
                            child: RawMaterialButton(
                              fillColor:
                                  const Color.fromARGB(255, 242, 230, 222),
                              elevation: 15.0,
                              padding:
                                  const EdgeInsets.symmetric(vertical: 20.0),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40.0),
                              ),
                              onPressed: () => {
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(
                                //     builder: (context) => TabsPageStudent(),
                                //   ),
                                // )
                              },
                              child: const Text("Confirm",
                                  style: TextStyle(
                                    color: PersonalColors.colorPrimary,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18.0,
                                  )),
                            )),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 50, right: 50, top: 15),
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      children: [
                        const TextSpan(
                          text:
                              "Choose the ones that apply to you. If you have questions, please contact",
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 16.0,
                          ),
                        ),
                        TextSpan(
                          text: ' support.',
                          style: const TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w800,
                              color: PersonalColors.colorPrimary),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              // Código para redirección aquí
                            },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ]),
      ),
    );
  }
}
