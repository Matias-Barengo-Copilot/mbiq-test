import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mybeautyiq/controller_image.dart';
import 'package:mybeautyiq/helpers/helper_colors.dart';
import 'package:mybeautyiq/pages/reset_password_send.dart';
import 'package:mybeautyiq/profile_type.dart';
import 'package:mybeautyiq/sign_up.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            alignment: Alignment.center,
            child: FutureBuilder(
              //   future: _initializFirebase(),
              builder: (context, snapshot) {
                return const LoginScreen();
              },
            ),
          ),
        ));
  }
}

// @dev login screen
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // @dev Login Functions
  @override
  Widget build(BuildContext context) {
    // @dev create the textfield controller
    TextEditingController _emailController = TextEditingController();
    TextEditingController _passwordController = TextEditingController();

    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const SizedBox(
              height: 80,
            ),
            Column(children: const <Widget>[
              Text(
                'Hello,',
                style: TextStyle(fontSize: 20),
              ),
              Text(
                'Welcome Back',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
              )
            ]),
            Container(
              color: Colors.white,
              alignment: Alignment.center,
              padding: const EdgeInsets.all(30),
              child: const LoadImage(
                  heightImage: 150, widthImage: 300, nameImage: "logo.png"),
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
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.mail,
                      color: PersonalColors.beautyColor,
                    ),
                    border: InputBorder.none,
                    filled: true,
                    hintStyle: TextStyle(color: Colors.grey),
                    hintText: "Email",
                    fillColor: Colors.transparent),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(6.0),
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
                  hintText: "Password",
                  prefixIcon: Icon(
                    Icons.lock_outline,
                    color: PersonalColors.beautyColor,
                  ),
                  suffixIcon: Icon(
                    Icons.visibility_off,
                    color: PersonalColors.beautyColor,
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
            //////////////
            const SizedBox(height: 12.0),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResetPasswordSend(),
                  ),
                );
              },
              child: const Text(
                "Forgot your password?",
                style: TextStyle(
                    color: Colors.grey,
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.w400),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(4.0),
            ),
            const SizedBox(
              height: 20.0,
            ),
            SizedBox(
                child: Container(
              constraints: const BoxConstraints(maxWidth: 750.0),
              child: RawMaterialButton(
                  fillColor: const Color(0xFFd6b9a0),
                  elevation: 5.0,
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                  onPressed: () async {
                    //Quite el firebase
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ProfileType(),
                      ),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment
                        .center, //Center Row contents horizontally,
                    crossAxisAlignment: CrossAxisAlignment
                        .center, //Center Row contents vertically,
                    children: const <Widget>[
                      Icon(
                        Icons.login,
                        color: Colors.white,
                      ),
                      Text(" Login",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                          )),
                    ],
                  )),
            )),
            const Padding(
              padding: EdgeInsets.all(10.0),
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
                  padding: const EdgeInsets.only(right: 20),
                  child: Container(
                    width: 50,
                    height: 50,
                    child: RawMaterialButton(
                      fillColor: Colors.white,
                      elevation: 5.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      onPressed: () async {},
                      child: const Icon(
                        FontAwesomeIcons.google,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
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
                            builder: (context) => const SignUp(),
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
            const Padding(padding: EdgeInsets.all(15.0)),
            Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
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
        ),
      ),
    );
  }
}
