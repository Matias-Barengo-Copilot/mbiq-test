import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mybeautyiq/helpers/helper_colors.dart';

//void main() => runApp(const CompleteProfileStudent1());

class CompleteProfileStudent1 extends StatelessWidget {
  //const CompleteProfileStudent1({Key? key}) : super(key: key);

  final Function(int) changeView;
  CompleteProfileStudent1({required this.changeView});

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
                margin: EdgeInsets.fromLTRB(40, 20, 40, 40),
                child: Column(
                  children: [
                    _HeadTitle(),
                    _HeadContent(),
                    Body(),
                  ],
                ),
              ),
            ),
          ),
          ButtonFloatSubmit(changeView: changeView),
        ],
      ),
    );
  }
}

class ButtonFloatSubmit extends StatelessWidget {
  final Function(int) changeView;
  ButtonFloatSubmit({required this.changeView});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: [
          SizedBox(
            child: FractionallySizedBox(
              widthFactor:
                  0.8, // Establece el ancho del botón al 80% del ancho del contenedor
              child: RawMaterialButton(
                fillColor: Colors.white,
                elevation: 15.0,
                padding: const EdgeInsets.symmetric(vertical: 15.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40.0),
                ),
                onPressed: () async {
                  //Quite el firebase
                  changeView(1);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment
                      .center, //Center Row contents horizontally,
                  crossAxisAlignment: CrossAxisAlignment
                      .center, //Center Row contents vertically,
                  children: const <Widget>[
                    Text(
                      "Next ",
                      style: TextStyle(
                        color: PersonalColors.colorBorderTextField,
                        fontWeight: FontWeight.w600,
                        fontSize: 16.0,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 16,
                      color: PersonalColors.colorBorderTextField,
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
              changeView(1);
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
                "Let's complete your profile",
                style: TextStyle(
                  color: PersonalColors.colorPrimary,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Padding(padding: EdgeInsets.all(5)),
              Text(
                "It will help us to know more about you!",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12.0,
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
          width: 156.0,
          height: 156.0,
          decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/images/not_profile.png')))),
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

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 750.0),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(12.0),
          ),
          Container(
            constraints: const BoxConstraints(maxWidth: 750.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              border: Border.all(
                color: PersonalColors.beautyColor,
                width: 2,
              ),
            ),
            child: const TextField(
              obscureText: true,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintStyle: TextStyle(color: Colors.grey),
                hintText: "Date of birth",
                prefixIcon: Icon(
                  Icons.calendar_month_outlined,
                  color: Colors.grey,
                ),
                border: InputBorder.none,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(4.0),
          ),
          Container(
            constraints: const BoxConstraints(maxWidth: 750.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              border: Border.all(
                color: PersonalColors.beautyColor,
                width: 2,
              ),
            ),
            child: Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Icon(
                    Icons.people_alt_outlined,
                    color: Colors.grey,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: DropdownButton(
                      isExpanded: true,
                      hint: const Text("Area Of Enterprise"),
                      items: options,
                      onChanged: (value) {
                        // aquí puedes manejar la selección del usuario
                      },
                    ),
                  ),
                ),
              ],
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
                      text: "Classes i'm interested in...",
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 12.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
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
                      text: "(Check all that apply)",
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 12.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(10.0),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                      //align top
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                        const Padding(padding: EdgeInsets.all(24.0)),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          )
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
