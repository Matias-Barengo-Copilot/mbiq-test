import 'package:flutter/material.dart';
import 'package:mybeautyiq/controller_image.dart';
import 'package:mybeautyiq/meter_page.dart';
import 'package:mybeautyiq/widgets/app_bar.dart';

class EducatorProfile extends StatefulWidget {
  const EducatorProfile({Key? key}) : super(key: key);

  @override
  State<EducatorProfile> createState() => _EducatorProfileState();
}

enum TypeOfClass { cutting, color, business, extensions, smoothingTreatments }

class _EducatorProfileState extends State<EducatorProfile> {
  TypeOfClass? types = TypeOfClass.cutting;

  Widget customRadioButton(String text, TypeOfClass index) {
    return OutlinedButton(
      onPressed: () {
        setState(() {
          types = index;
        });
      },
      child: Row(
        children: [
          LoadImage(
            heightImage: 20,
            widthImage: 20,
            nameImage: (types == index) ? "checked.png" : "Unchecked.png",
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Text(text,
                style: const TextStyle(
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                  fontSize: 25,
                )),
          )
        ],
      ),
    );
  }

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
              Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    child: const LoadImage(
                        heightImage: 120,
                        widthImage: 120,
                        nameImage: "iamImage2.png"),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: const Text("I am an educator.",
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                          color: Colors.black,
                          fontSize: 30,
                        )),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    child: const Text("Classes I’ll be offering",
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                          color: Colors.black,
                          fontSize: 30,
                        )),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: const Text("(check all that apply)",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                          fontSize: 25,
                        )),
                  ),
                ],
              ),
              Column(
                children: [
                  customRadioButton("Cutting", TypeOfClass.cutting),
                  customRadioButton("Color", TypeOfClass.color),
                  customRadioButton("Business", TypeOfClass.business),
                  customRadioButton("Extensions", TypeOfClass.extensions),
                  customRadioButton(
                      "Smoothing treatments", TypeOfClass.smoothingTreatments),
                ],
              ),
              Container(
                alignment: Alignment.center,
                child: GestureDetector(
                  onTap: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MeterPage(),
                      ),
                    )
                  },
                  child: const LoadImage(
                      heightImage: 60,
                      widthImage: 60,
                      nameImage: "arrowRight2.png"),
                ),
              ),
            ]),
      ),
    );
  }
}
