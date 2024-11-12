import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mybeautyiq/helpers/helper_colors.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

//void main() => runApp(const CompleteProfileEducator2());

class CompleteProfileEducator2 extends StatelessWidget {
  //const CompleteProfileEducator1({Key? key}) : super(key: key);
  final Function changeView;

  CompleteProfileEducator2({required this.changeView});

  @override
  Widget build(BuildContext context) {
    return CompleteProfile2(changeView: changeView);
  }
}

class CompleteProfile2 extends StatelessWidget {
  //const CompleteProfileEducator2({Key? key}) : super(key: key);
  final Function changeView;
  CompleteProfile2({required this.changeView});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: PersonalColors.beautyColor,
        //appBar: _AppBarStudent(),
        body: Column(
          children: [
            Expanded(
                child: SingleChildScrollView(
              child: Container(
                  margin: const EdgeInsets.fromLTRB(40, 20, 40, 40),
                  child: Column(
                    children: [
                      _HeadTitle(),
                      _HeadContent(),
                      Body(),
                    ],
                  )),
            )),
            ButtonFloatSubmit(changeView: changeView),
          ],
        ));
  }
}

class ButtonFloatSubmit extends StatelessWidget {
  final Function changeView;
  ButtonFloatSubmit({required this.changeView});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          SizedBox(
            child: FractionallySizedBox(
              widthFactor:
                  0.8, // Establece el ancho del botón al 80% del ancho del contenedor
              child: RawMaterialButton(
                fillColor: Colors.white,
                elevation: 15.0,
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40.0),
                ),
                onPressed: () async {
                  //Quite el firebase
                  changeView(2); //
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment
                      .center, //Center Row contents horizontally,
                  crossAxisAlignment: CrossAxisAlignment
                      .center, //Center Row contents vertically,
                  children: const <Widget>[
                    Text(
                      "Submit for Approval",
                      style: TextStyle(
                        color: PersonalColors.colorBorderTextField,
                        fontWeight: FontWeight.w600,
                        fontSize: 16.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(18.0),
          ),
          InkWell(
            onTap: () {
              changeView(2); //
            },
            child: const Text(
              "Skip step",
              style: TextStyle(
                color: PersonalColors.colorTextUnderline,
                fontSize: 14.0,
                fontWeight: FontWeight.w400,
                decoration: TextDecoration.underline,
              ),
              //subrayado
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(2.0),
          ),
        ],
      ),
    );
  }
}

class _HeadTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
          padding: const EdgeInsets.only(top: 35, bottom: 20),
          child: Column(
            children: const <Widget>[
              Text(
                "Set up yout first Class",
                style: TextStyle(
                  color: PersonalColors.colorPrimary,
                  fontSize: 24.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Padding(padding: EdgeInsets.all(5)),
              Text(
                "Get started on building your BeautyIQ by imparting classes!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14.0,
                ),
              ),
            ],
          )),
    );
  }
}

class _HeadContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Column(
          children: <Widget>[
            //margin
            const Padding(padding: EdgeInsets.all(6)),
            // text field basic, class name
            Container(
              width: MediaQuery.of(context).size.width * 0.6,
              child: const TextField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  filled: false,
                  alignLabelWithHint: true,
                  fillColor: Colors.transparent,
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        color: PersonalColors.colorBorderTextField, width: 0.5),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        color: PersonalColors.colorBorderTextField, width: 0.5),
                  ),
                  contentPadding: EdgeInsets.only(bottom: 10),
                  hintText: 'Class Name',
                  hintStyle: TextStyle(
                    color: PersonalColors.colorTextTextField,
                    fontSize: 20,
                  ),
                ),
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            //margin
            const Padding(padding: EdgeInsets.all(10)),
            const TextField(
              decoration: InputDecoration(
                //background
                filled: true,
                fillColor: Colors.white,
                //border radius
                contentPadding: EdgeInsets.all(10),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white, width: 2),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white, width: 2),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                border: InputBorder.none,
                hintText: 'Enter a class description...',
                hintStyle: TextStyle(color: PersonalColors.iconTextfield),
              ),
              keyboardType: TextInputType.multiline,
              maxLines: 4,
            )
          ],
        ),
      ),
    );
  }
}

class Body extends StatefulWidget {
  //const Body({super.key});
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _Body();
}

class _Body extends State<Body> {
  bool isChecked = false;

  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return PersonalColors.colorPrimary;
    }
    return Colors.black;
  }

  List<DropdownMenuItem<String>> options = [
    const DropdownMenuItem(
      child: Text("Option 1"),
      value: "option_1",
    ),
    const DropdownMenuItem(
      child: Text("Option 2"),
      value: "option_2",
    ),
  ];

  void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
    // TODO: implement your code here
    print(args.value.startDate);
    print(args.value.endDate);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 750.0),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(12.0),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: "Class Category",
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 16.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(2.0),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Checkbox(
                              checkColor: Colors.white,
                              fillColor:
                                  MaterialStateProperty.resolveWith(getColor),
                              value: isChecked,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked = value!;
                                });
                              },
                            ),
                            const Text(
                              "Cutting",
                              style: TextStyle(fontSize: 13),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Checkbox(
                              checkColor: Colors.white,
                              fillColor:
                                  MaterialStateProperty.resolveWith(getColor),
                              value: isChecked,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked = value!;
                                });
                              },
                            ),
                            const Text(
                              "Color",
                              style: TextStyle(fontSize: 13),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Checkbox(
                              checkColor: Colors.white,
                              fillColor:
                                  MaterialStateProperty.resolveWith(getColor),
                              value: isChecked,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked = value!;
                                });
                              },
                            ),
                            const Text(
                              "Hair Extensions",
                              style: TextStyle(fontSize: 13),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Checkbox(
                              checkColor: Colors.white,
                              fillColor:
                                  MaterialStateProperty.resolveWith(getColor),
                              value: isChecked,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked = value!;
                                });
                              },
                            ),
                            const Text(
                              "Eyelash Extensions",
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Checkbox(
                              checkColor: Colors.white,
                              fillColor:
                                  MaterialStateProperty.resolveWith(getColor),
                              value: isChecked,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked = value!;
                                });
                              },
                            ),
                            const Text(
                              "Nails",
                              style: TextStyle(fontSize: 13),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Checkbox(
                              checkColor: Colors.white,
                              fillColor:
                                  MaterialStateProperty.resolveWith(getColor),
                              value: isChecked,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked = value!;
                                });
                              },
                            ),
                            const Text(
                              "Business",
                              style: TextStyle(fontSize: 13),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Checkbox(
                              checkColor: Colors.white,
                              fillColor:
                                  MaterialStateProperty.resolveWith(getColor),
                              value: isChecked,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked = value!;
                                });
                              },
                            ),
                            const Text(
                              "Facials",
                              style: TextStyle(fontSize: 13),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Checkbox(
                              checkColor: Colors.white,
                              fillColor:
                                  MaterialStateProperty.resolveWith(getColor),
                              value: isChecked,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked = value!;
                                });
                              },
                            ),
                            const Text(
                              "Smoothing",
                              style: TextStyle(fontSize: 13),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Checkbox(
                              checkColor: Colors.white,
                              fillColor:
                                  MaterialStateProperty.resolveWith(getColor),
                              value: isChecked,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked = value!;
                                });
                              },
                            ),
                            const Text(
                              "Eyebrows",
                              style: TextStyle(fontSize: 13),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.all(12.0),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: "Class Type",
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Row(children: [
                Expanded(
                    child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Checkbox(
                        checkColor: Colors.white,
                        fillColor: MaterialStateProperty.resolveWith(getColor),
                        value: isChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked = value!;
                          });
                        },
                      ),
                      const Text(
                        "Look in Learn",
                        style: TextStyle(fontSize: 13),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Checkbox(
                        checkColor: Colors.white,
                        fillColor: MaterialStateProperty.resolveWith(getColor),
                        value: isChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked = value!;
                          });
                        },
                      ),
                      const Text(
                        "Hands On",
                        style: TextStyle(fontSize: 13),
                      ),
                    ],
                  ),
                ]))
              ]),
              const Padding(
                padding: EdgeInsets.all(6.0),
              ),
              const TextField(
                decoration: InputDecoration(
                  //background
                  filled: true,
                  fillColor: Colors.white,
                  //border radius
                  contentPadding: EdgeInsets.all(10),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 2),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 2),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  prefixIcon: Icon(
                    Icons.location_on,
                    color: PersonalColors.iconTextfield,
                  ),
                  border: InputBorder.none,
                  hintText: 'Address',
                  hintStyle: TextStyle(color: PersonalColors.iconTextfield),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(12.0),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: "Date Range:",
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(6.0),
              ),
              SfDateRangePicker(
                onSelectionChanged: _onSelectionChanged,
                backgroundColor: Colors.white,
                selectionColor: PersonalColors.colorCalendaryRange,
                startRangeSelectionColor:
                    PersonalColors.colorCalendaryStartAndEnd,
                endRangeSelectionColor:
                    PersonalColors.colorCalendaryStartAndEnd,
                rangeSelectionColor: PersonalColors.colorCalendaryRange,
                selectionMode: DateRangePickerSelectionMode.range,
              ),
              const Padding(
                padding: EdgeInsets.all(12.0),
              ),
              // 2 campo tipo fecha, que tengan ancho de 50% cada uno, y estén en la misma fila
              Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            //background
                            filled: true,
                            fillColor: Colors.white,
                            //border radius
                            contentPadding: EdgeInsets.all(10),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.white, width: 2),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.white, width: 2),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            prefixIcon: Icon(
                              Icons.access_time,
                              color: PersonalColors.iconTextfield,
                            ),
                            border: InputBorder.none,
                            hintText: 'Starting Time',
                            hintStyle:
                                TextStyle(color: PersonalColors.iconTextfield),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(6.0),
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            //background
                            filled: true,
                            fillColor: Colors.white,
                            //border radius
                            contentPadding: EdgeInsets.all(10),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.white, width: 2),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.white, width: 2),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            border: InputBorder.none,
                            hintText: 'Duration',
                            hintStyle:
                                TextStyle(color: PersonalColors.iconTextfield),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _AppBarStudent extends StatelessWidget with PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: const Text(
        "Profile",
        style: TextStyle(
          color: PersonalColors.colorPrimary,
        ),
      ),
      systemOverlayStyle:
          const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
      backgroundColor: PersonalColors.beautyColor,
      elevation: 0,
      leading: Container(),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
