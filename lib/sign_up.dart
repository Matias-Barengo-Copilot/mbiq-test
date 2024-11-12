import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mybeautyiq/helpers/helper_colors.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PersonalColors.beautyColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    color: PersonalColors.beautyColor,
                    child: SafeArea(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Padding(padding: EdgeInsets.all(30.0)),
                        const Text(
                          "Create your Account",
                          style: TextStyle(
                            color: PersonalColors.colorPrimary,
                            fontSize: 26,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        const Padding(padding: EdgeInsets.all(10.0)),
                        Container(
                          constraints: const BoxConstraints(maxWidth: 750.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: PersonalColors.textfielBackgroundLight,
                          ),
                          child: const TextField(
                            keyboardType: TextInputType.name,
                            decoration: InputDecoration(
                              hintStyle: TextStyle(color: Colors.grey),
                              hintText: "First Name",
                              contentPadding: EdgeInsets.all(15.0),
                              prefixIcon: Icon(
                                Icons.person_outline,
                                color: PersonalColors.iconTextfield,
                              ),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        const SizedBox(height: 20.0),
                        Container(
                          constraints: const BoxConstraints(maxWidth: 750.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: PersonalColors.textfielBackgroundLight,
                            border: Border.all(
                              color: Colors.white,
                              width: 2,
                            ),
                          ),
                          child: TextField(
                            controller: _lastNameController,
                            keyboardType: TextInputType.name,
                            decoration: const InputDecoration(
                              hintStyle: TextStyle(color: Colors.grey),
                              hintText: "Last Name",
                              contentPadding: EdgeInsets.all(15.0),
                              prefixIcon: Icon(
                                Icons.person_outline,
                                color: PersonalColors.iconTextfield,
                              ),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        const SizedBox(height: 20.0),
                        Container(
                          constraints: const BoxConstraints(maxWidth: 750.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: PersonalColors.textfielBackgroundLight,
                            border: Border.all(
                              color: Colors.white,
                              width: 2,
                            ),
                          ),
                          child: const TextField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              hintStyle: TextStyle(color: Colors.grey),
                              hintText: "Email",
                              contentPadding: EdgeInsets.all(15.0),
                              prefixIcon: Icon(
                                Icons.mail_outline,
                                color: PersonalColors.iconTextfield,
                              ),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        const SizedBox(height: 20.0),
                        Container(
                          constraints: const BoxConstraints(maxWidth: 750.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: PersonalColors.textfielBackgroundLight,
                            border: Border.all(
                              color: Colors.white,
                              width: 2,
                            ),
                          ),
                          child: TextField(
                            controller: _passwordController,
                            obscureText: true,
                            decoration: const InputDecoration(
                              hintStyle: TextStyle(color: Colors.grey),
                              hintText: "Password",
                              contentPadding: EdgeInsets.all(15.0),
                              prefixIcon: Icon(
                                Icons.lock_outline,
                                color: PersonalColors.iconTextfield,
                              ),
                              suffixIcon: Icon(
                                Icons.visibility_off,
                                color: PersonalColors.iconTextfield,
                              ),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        const SizedBox(height: 20.0),
                        Container(
                          constraints: const BoxConstraints(maxWidth: 750.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: PersonalColors.textfielBackgroundLight,
                            border: Border.all(
                              color: Colors.white,
                              width: 2,
                            ),
                          ),
                          child: const TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              hintStyle: TextStyle(color: Colors.grey),
                              hintText: "Confirm Password",
                              contentPadding: EdgeInsets.all(15.0),
                              prefixIcon: Icon(
                                Icons.lock_outline,
                                color: PersonalColors.iconTextfield,
                              ),
                              suffixIcon: Icon(
                                Icons.visibility_off,
                                color: PersonalColors.iconTextfield,
                              ),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        const SizedBox(height: 20.0),
                        Container(
                          constraints: const BoxConstraints(maxWidth: 750.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: PersonalColors.textfielBackgroundLight,
                            border: Border.all(
                              color: Colors.white,
                              width: 2,
                            ),
                          ),
                          child: TextField(
                            controller: _passwordController,
                            obscureText: true,
                            decoration: const InputDecoration(
                              hintStyle: TextStyle(color: Colors.grey),
                              hintText: "Cosmetician License",
                              prefixIcon: Icon(
                                Icons.people,
                                color: PersonalColors.iconTextfield,
                              ),
                              suffixIcon: Icon(
                                Icons.info_outline,
                                color: PersonalColors.iconTextfield,
                              ),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        const SizedBox(height: 30.0),
                        Center(
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                            child: RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                children: [
                                  const TextSpan(
                                    text:
                                        "By registering in our application you are accepting our ",
                                    style: TextStyle(
                                      color: Colors.black87,
                                      fontSize: 13.0,
                                    ),
                                  ),
                                  TextSpan(
                                    text: ' Privacy Policy',
                                    style: const TextStyle(
                                      color: Colors.black87,
                                      fontSize: 13.0,
                                      decoration: TextDecoration.underline,
                                    ),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => SignUp(),
                                          ),
                                        );
                                      },
                                  ),
                                  TextSpan(
                                    text: ' and',
                                    style: const TextStyle(
                                      color: Colors.black87,
                                      fontSize: 13.0,
                                    ),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => SignUp(),
                                          ),
                                        );
                                      },
                                  ),
                                  TextSpan(
                                    text: ' Terms of Use',
                                    style: const TextStyle(
                                      color: Colors.black87,
                                      fontSize: 13.0,
                                      decoration: TextDecoration.underline,
                                    ),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => SignUp(),
                                          ),
                                        );
                                      },
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 30.0,
                        ),
                        SizedBox(
                            child: Container(
                          constraints: const BoxConstraints(maxWidth: 750.0),
                          child: RawMaterialButton(
                              fillColor: Colors.white,
                              elevation: 20.0,
                              padding:
                                  const EdgeInsets.symmetric(vertical: 20.0),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40.0),
                              ),
                              onPressed: () async {
                                //Quite el firebase
                                print("Sing Up");
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment
                                    .center, //Center Row contents horizontally,
                                crossAxisAlignment: CrossAxisAlignment
                                    .center, //Center Row contents vertically,
                                children: const <Widget>[
                                  Text(" Register",
                                      style: TextStyle(
                                        color: PersonalColors.colorPrimary,
                                        fontSize: 18.0,
                                      )),
                                ],
                              )),
                        )),
                        const Padding(
                          padding: EdgeInsets.all(6.0),
                        ),
                        Container(
                          constraints: const BoxConstraints(maxWidth: 750.0),
                          child: Row(
                            children: const <Widget>[
                              Expanded(
                                flex: 45,
                                child: Divider(
                                  height: 1,
                                  thickness: 1,
                                  indent: 15,
                                  endIndent: 15,
                                  color: Colors.black,
                                ),
                              ),
                              Text("or"),
                              Expanded(
                                flex: 45,
                                child: Divider(
                                  height: 1,
                                  thickness: 1,
                                  indent: 15,
                                  endIndent: 15,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Padding(padding: EdgeInsets.all(10.0)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(right: 22),
                              child: Container(
                                width: 50,
                                height: 50,
                                child: RawMaterialButton(
                                  fillColor: Colors.white,
                                  elevation: 5.0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  onPressed: () async {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => SignUp(),
                                      ),
                                    );
                                  },
                                  child: const Icon(
                                    FontAwesomeIcons.google,
                                    color: Colors.red,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 22),
                              child: Container(
                                width: 50,
                                height: 50,
                                child: RawMaterialButton(
                                  fillColor: Colors.white,
                                  elevation: 5.0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  onPressed: () async {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => SignUp(),
                                      ),
                                    );
                                  },
                                  child: const Icon(
                                    FontAwesomeIcons.facebook,
                                    color: Colors.blue,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 0),
                              child: Container(
                                width: 50,
                                height: 50,
                                child: RawMaterialButton(
                                  fillColor: Colors.white,
                                  elevation: 5.0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  onPressed: () async {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => SignUp(),
                                      ),
                                    );
                                  },
                                  child: const Icon(
                                    FontAwesomeIcons.apple,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Padding(padding: EdgeInsets.all(4.0)),
                        Center(
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                            child: RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                children: [
                                  const TextSpan(
                                    text: "New to My Beauty IQ?",
                                    style: TextStyle(
                                      color: Colors.black87,
                                      fontSize: 16.0,
                                    ),
                                  ),
                                  TextSpan(
                                    text: ' Sign Up.',
                                    style: const TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.w600,
                                        color: PersonalColors.colorPrimary),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => SignUp(),
                                          ),
                                        );
                                      },
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    )),
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
