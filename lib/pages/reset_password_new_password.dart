import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mybeautyiq/helpers/helper_colors.dart';
import 'package:mybeautyiq/pages/reset_password_check_email.dart';

class ResetPasswordNewPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: PersonalColors.beautyColor,
        // appBar: _AppBarStudent(),
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    const Padding(padding: EdgeInsets.all(45.0)),
                    const Center(
                      child: Text(
                        "New Password",
                        style: TextStyle(
                          color: PersonalColors.colorPrimary,
                          fontSize: 26.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 40.0),
                    const Center(
                      child: Text(
                        "Your new password must be different from previous passwords.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                    const SizedBox(height: 35.0),
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
                          hintText: "Password",
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
                    const SizedBox(height: 15.0),
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
                    const SizedBox(height: 35.0),
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
                          onPressed: () async {
                            //Quite el firebase
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ResetPasswordCheck(),
                              ),
                            );
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment
                                .center, //Center Row contents horizontally,
                            crossAxisAlignment: CrossAxisAlignment
                                .center, //Center Row contents vertically,
                            children: const <Widget>[
                              Text("Reset Password",
                                  style: TextStyle(
                                    color: PersonalColors.colorPrimary,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18.0,
                                  )),
                            ],
                          )),
                    )),
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
