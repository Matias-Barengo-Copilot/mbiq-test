import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mybeautyiq/helpers/helper_colors.dart';

class ProfileEducator extends StatelessWidget {
  const ProfileEducator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PersonalColors.beautyColor,
      //appBar: _AppBarStudent(),
      body: Container(
          margin: const EdgeInsets.fromLTRB(40, 20, 40, 40),
          child: Column(
            children: [
              _HeadTitle(),
              _HeadStuden(),
              _DetailAccount(),
            ],
          )),
    );
  }
}

class _HeadTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Padding(
      padding: EdgeInsets.only(top: 35, bottom: 20),
      child: Text(
        "Profile",
        style: TextStyle(
          color: PersonalColors.colorPrimary,
          fontSize: 24.0,
          fontWeight: FontWeight.w600,
        ),
      ),
    ));
  }
}

class _HeadStuden extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      //Center Row contents horizontally,
      children: <Widget>[
        Expanded(
            flex: 32,
            child: Column(children: const <Widget>[
              Padding(padding: EdgeInsets.all(5.0)),
              _CardHeadProfile(53, 'Class Hours Taken'),
              _CardHeadProfile(189, '\nBeauty IQ'),
            ])),
        Expanded(
            flex: 68,
            child: Column(
              children: <Widget>[
                Row(
                  //Center Row contents horizontally,
                  children: [
                    Expanded(
                        child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: <Widget>[
                                Row(
                                  children: [
                                    Container(
                                        width: 60.0,
                                        height: 60.0,
                                        decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            image: DecorationImage(
                                                fit: BoxFit.fill,
                                                image: AssetImage(
                                                    'assets/images/not_profile.png')))),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: const <Widget>[
                                                Align(
                                                    child: Text(
                                                  'Korinthia Marsh',
                                                  textAlign: TextAlign.left,
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      fontSize: 16),
                                                ))
                                              ],
                                            ),
                                            Row(children: <Widget>[
                                              Container(
                                                margin: const EdgeInsets.only(
                                                    top: 5),
                                                child: const Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Text(
                                                    'Beauty Student',
                                                    textAlign: TextAlign.left,
                                                  ),
                                                ),
                                              )
                                            ]),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: const <Widget>[
                                                Icon(
                                                  Icons.check_circle_outline,
                                                  color: Color.fromRGBO(
                                                      111, 66, 55, 1),
                                                ),
                                                Text(
                                                  'Verified',
                                                  textAlign: TextAlign.left,
                                                  style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        111, 66, 55, 1),
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                SizedBox(
                                  width: double.infinity,
                                  child: ElevatedButton(
                                    style: ButtonStyle(
                                      padding: MaterialStateProperty.all(
                                        const EdgeInsets.symmetric(
                                            vertical: 10.0, horizontal: 30.0),
                                      ),
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                        Colors.white,
                                      ), //optiona
                                      shape: MaterialStateProperty.all<
                                              RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                      )),
                                    ),
                                    onPressed: null,
                                    child: const Text(
                                      'Edit Profile',
                                      style: TextStyle(
                                          color: PersonalColors.textButton),
                                    ),
                                  ),
                                )
                              ],
                            )))
                  ],
                )
              ],
            ))
      ],
    );
  }
}

class _CardHeadProfile extends StatelessWidget {
  final int value;
  final String description;

  const _CardHeadProfile(this.value, this.description);

  @override
  Widget build(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        elevation: 0,

        // Dentro de esta propiedad usamos ClipRRect
        child: ClipRRect(
          // Los bordes del contenido del card se cortan usando BorderRadius
          borderRadius: BorderRadius.circular(20),

          // EL widget hijo que será recortado segun la propiedad anterior
          child: Column(
            children: <Widget>[
              // Usamos Container para el contenedor de la descripción
              Container(
                width: double.infinity,
                padding: const EdgeInsets.fromLTRB(5, 10, 5, 13),
                child: Column(
                  children: [
                    Text(value.toString(),
                        style: const TextStyle(fontWeight: FontWeight.w600)),
                    Text(
                      description,
                      style: const TextStyle(fontWeight: FontWeight.w300),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}

class _DetailAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        margin: const EdgeInsets.only(top: 35.0),
        elevation: 3,
        child: Column(
          children: <Widget>[
            ListTile(
              contentPadding: EdgeInsets.all(20),
              title: const Text(
                'Account',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
              ),
              subtitle: Container(
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.white,
                      width: 2,
                    ),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: const <Widget>[
                                Icon(
                                  Icons.person_outline,
                                  color: Color.fromRGBO(183, 152, 140, 0.7),
                                ),
                                Padding(padding: EdgeInsets.all(3.0)),
                                Text(
                                  'Personal Data',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400),
                                )
                              ],
                            ),
                            const Icon(Icons.arrow_forward_ios),
                          ]),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: const <Widget>[
                                Icon(
                                  Icons.pie_chart_outline,
                                  color: Color.fromRGBO(183, 152, 140, 0.7),
                                ),
                                Padding(padding: EdgeInsets.all(3.0)),
                                Text(
                                  'Class History',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400),
                                )
                              ],
                            ),
                            const Icon(Icons.arrow_forward_ios),
                          ])
                    ],
                  )),
            ),
          ],
        ),
      ),
      Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        margin: const EdgeInsets.only(top: 20.0),
        elevation: 3,
        child: Column(
          children: <Widget>[
            ListTile(
              contentPadding: EdgeInsets.all(20),
              title: const Text(
                'Other',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
              ),
              subtitle: Container(
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.white,
                      width: 2,
                    ),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: const <Widget>[
                                Icon(
                                  Icons.mail_outline,
                                  color: Color.fromRGBO(183, 152, 140, 0.7),
                                ),
                                Padding(padding: EdgeInsets.all(3.0)),
                                Text(
                                  'Contact Us',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400),
                                )
                              ],
                            ),
                            const Icon(Icons.arrow_forward_ios),
                          ]),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: const <Widget>[
                                Icon(
                                  Icons.verified_user_outlined,
                                  color: Color.fromRGBO(183, 152, 140, 0.7),
                                ),
                                Padding(padding: EdgeInsets.all(3.0)),
                                Text(
                                  'Privacy Policy',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400),
                                )
                              ],
                            ),
                            const Icon(Icons.arrow_forward_ios),
                          ]),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: const <Widget>[
                                Icon(
                                  Icons.settings_outlined,
                                  color: Color.fromRGBO(183, 152, 140, 0.7),
                                ),
                                Padding(padding: EdgeInsets.all(3.0)),
                                Text(
                                  'Settings',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400),
                                )
                              ],
                            ),
                            const Icon(Icons.arrow_forward_ios),
                          ])
                    ],
                  )),
            ),
          ],
        ),
      )
    ]);
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
            fontSize: 26,
            fontWeight: FontWeight.w600),
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
