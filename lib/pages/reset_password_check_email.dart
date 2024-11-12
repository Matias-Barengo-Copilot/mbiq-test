import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mybeautyiq/helpers/helper_colors.dart';
import 'package:mybeautyiq/pages/reset_password_new_password.dart';

class ResetPasswordCheck extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: PersonalColors.beautyColor,
        // appBar: _AppBarStudent(),
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: EdgeInsets.all(25.0),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    const Padding(padding: EdgeInsets.all(45.0)),
                    Center(
                      child: CircleAvatar(
                        radius: 100,
                        backgroundColor: Colors.white,
                        child: Container(
                          width: 70,
                          height: 70,
                          child:
                              Image.asset('assets/images/email_outlined.png'),
                        ),
                      ),
                    ),
                    const SizedBox(height: 30.0),
                    const Center(
                      child: Text(
                        "Check your Email",
                        style: TextStyle(
                          color: PersonalColors.colorPrimary,
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    const Center(
                        child: Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: Text(
                        "We have sent pasword recovery instructions to your email.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 16.0,
                        ),
                      ),
                    )),
                    const SizedBox(height: 40.0),
                    SizedBox(
                        child: Container(
                      constraints: const BoxConstraints(maxWidth: 750.0),
                      child: RawMaterialButton(
                          fillColor: const Color.fromARGB(255, 242, 230, 222),
                          elevation: 5.0,
                          padding: const EdgeInsets.symmetric(vertical: 20.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40.0),
                          ),
                          onPressed: () => {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        ResetPasswordNewPassword(),
                                  ),
                                )
                              },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment
                                .center, //Center Row contents horizontally,
                            crossAxisAlignment: CrossAxisAlignment
                                .center, //Center Row contents vertically,
                            children: const <Widget>[
                              Text("Return to Login",
                                  style: TextStyle(
                                    color: PersonalColors.colorPrimary,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18.0,
                                  )),
                            ],
                          )),
                    )),
                    const SizedBox(height: 130.0),
                    Center(
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                        child: RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            children: [
                              const TextSpan(
                                text:
                                    "Can't find the email? Check your spam files or contact us for",
                                style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 16.0,
                                ),
                              ),
                              TextSpan(
                                text: ' support.',
                                style: const TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w600,
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
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}

// class _AppBarStudent extends StatelessWidget with PreferredSizeWidget {
//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       centerTitle: true,
//       title: const Text("Profile"),
//       systemOverlayStyle:
//           const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
//       backgroundColor: PersonalColors.beautyColor,
//       elevation: 0,
//       leading: IconButton(
//         icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
//         onPressed: () => Navigator.of(context).pop(),
//         color: Colors.white,
//       ),
//     );
//   }

//   @override
//   Size get preferredSize => Size.fromHeight(kToolbarHeight);
// }
