import 'package:flutter/material.dart';
import 'package:mybeautyiq/helpers/helper_colors.dart';
import 'package:mybeautyiq/widgets/app_bar.dart';
import 'package:mybeautyiq/widgets/row_radio_button.dart';

class CustomInput extends StatelessWidget {
  const CustomInput(
      {Key? key,
      required this.controller,
      required this.hintText,
      required this.keyboardType})
      : super(key: key);
  final TextEditingController controller;
  final String hintText;
  final TextInputType keyboardType;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: Colors.white,
          border: Border.all(
            color: PersonalColors.appBarColor,
            width: 2,
          ),
        ),
        child: TextField(
          controller: controller,
          keyboardType: keyboardType,
          decoration: InputDecoration(
              border: InputBorder.none,
              filled: true,
              hintStyle: const TextStyle(color: PersonalColors.beautyColor),
              hintText: hintText,
              fillColor: Colors.transparent),
        ),
      ),
    );
  }
}

class ClassInput extends StatefulWidget {
  const ClassInput({Key? key}) : super(key: key);

  @override
  State<ClassInput> createState() => _ClassInputState();
}

enum CategoryOfClass {
  cutting,
  color,
  business,
  extensions,
  smoothingTreatments
}

enum TypeOfClass { lookLearn, handsOn, virtual }

class _ClassInputState extends State<ClassInput> {
  CategoryOfClass? category = CategoryOfClass.cutting;
  TypeOfClass? types = TypeOfClass.lookLearn;

  Widget customRadioButtonCategory(String text, CategoryOfClass index) {
    return OutlinedButton(
      onPressed: () {
        setState(() {
          category = index;
        });
      },
      child: RowRadioButton(
        nameImage: (category == index) ? "checked.png" : "Unchecked.png",
        fontSize: 15,
        text: text,
        colorText: PersonalColors.beautyColor,
      ),
    );
  }

  Widget customRadioButtonType(String text, TypeOfClass index) {
    return OutlinedButton(
      onPressed: () {
        setState(() {
          types = index;
        });
      },
      child: RowRadioButton(
        nameImage: (types == index) ? "checked.png" : "Unchecked.png",
        fontSize: 15,
        text: text,
        colorText: PersonalColors.beautyColor,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    const double heightAppBar = 56;
    TextEditingController _className = TextEditingController();
    TextEditingController _address = TextEditingController();
    TextEditingController _date = TextEditingController();
    TextEditingController _startingTime = TextEditingController();
    TextEditingController _duration = TextEditingController();

    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(heightAppBar),
        child: AppBarBeauty(heightAppBar: heightAppBar),
      ),
      body: Container(
        color: Colors.white,
        child: ListView(
          children: [
            const SizedBox(
              height: 30,
            ),
            const Text("about my class.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  color: Colors.black,
                  fontSize: 25,
                )),
            const SizedBox(
              height: 10,
            ),
            Column(
              children: [
                CustomInput(
                  controller: _className,
                  hintText: "Class name",
                  keyboardType: TextInputType.text,
                ),
                const SizedBox(
                  height: 5,
                ),
                CustomInput(
                  controller: _address,
                  hintText: "Address",
                  keyboardType: TextInputType.streetAddress,
                ),
                const SizedBox(
                  height: 5,
                ),
                CustomInput(
                  controller: _date,
                  hintText: "Date",
                  keyboardType: TextInputType.datetime,
                ),
                const SizedBox(
                  height: 5,
                ),
                CustomInput(
                  controller: _startingTime,
                  hintText: "Starting time",
                  keyboardType: TextInputType.datetime,
                ),
                const SizedBox(
                  height: 5,
                ),
                CustomInput(
                  controller: _duration,
                  hintText: "Duration",
                  keyboardType: TextInputType.number,
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(" Class Category",
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      color: PersonalColors.appBarColor,
                      fontSize: 18,
                    )),
                const SizedBox(
                  height: 8,
                ),
                customRadioButtonCategory("Cutting", CategoryOfClass.cutting),
                customRadioButtonCategory("Color", CategoryOfClass.color),
                customRadioButtonCategory("Business", CategoryOfClass.business),
                customRadioButtonCategory(
                    "Extensions", CategoryOfClass.extensions),
                customRadioButtonCategory("Smoothing treatments",
                    CategoryOfClass.smoothingTreatments),
                const SizedBox(
                  height: 12,
                ),
                const Text(" Class Type",
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      color: PersonalColors.appBarColor,
                      fontSize: 18,
                    )),
                const SizedBox(
                  height: 8,
                ),
                customRadioButtonType("Look ‘n Learn", TypeOfClass.lookLearn),
                customRadioButtonType("Hands On", TypeOfClass.handsOn),
                customRadioButtonType("Virtual", TypeOfClass.virtual)
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
                width: 300,
                child: Container(
                  width: double.infinity,
                  child: RawMaterialButton(
                    fillColor: PersonalColors.colorSubmitClass,
                    elevation: 0.0,
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40.0),
                    ),
                    onPressed: () => {print("next")},
                    child: const Text("SUBMIT CLASS FOR REVIEW",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                          fontSize: 18.0,
                        )),
                  ),
                )),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
