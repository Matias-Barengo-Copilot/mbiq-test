import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mybeautyiq/helpers/helper_colors.dart';

class MyClassesEducator extends StatelessWidget {
  const MyClassesEducator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PersonalColors.beautyColor,
      //appBar: _AppBarEducator(),
      body: Container(
          margin: const EdgeInsets.fromLTRB(40, 20, 40, 40),
          child: Column(
            children: [
              _HeadTitle(),
              _HeadEducator(),
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
        "My Classes",
        style: TextStyle(
          color: PersonalColors.colorPrimary,
          fontSize: 24.0,
          fontWeight: FontWeight.w600,
        ),
      ),
    ));
  }
}

class _HeadEducator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Row(
            children: [
              const Expanded(
                flex: 13,
                child: Padding(padding: EdgeInsets.all(3.0)),
              ),
              Expanded(
                flex: 35,
                child: Container(
                    width: double.infinity,
                    child: RawMaterialButton(
                      fillColor: Colors.white,
                      padding: const EdgeInsets.symmetric(vertical: 5.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                      onPressed: () => {},
                      child: const Text("Completed",
                          style: TextStyle(
                            color: PersonalColors.colorPrimary,
                            fontSize: 12.0,
                          )),
                    )),
              ),
              const Expanded(
                flex: 4,
                child: Padding(padding: EdgeInsets.all(3.0)),
              ),
              Expanded(
                flex: 35,
                child: Container(
                    width: double.infinity,
                    child: RawMaterialButton(
                      fillColor: PersonalColors.beautyColor,
                      padding: const EdgeInsets.symmetric(vertical: 5.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                      onPressed: () => {},
                      child: const Text("Upcoming",
                          style: TextStyle(
                            color: PersonalColors.colorPrimary,
                            fontSize: 12.0,
                          )),
                    )),
              ),
              const Expanded(
                flex: 13,
                child: Padding(padding: EdgeInsets.all(3.0)),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: const <Widget>[
              Expanded(
                flex: 19,
                child: Padding(padding: EdgeInsets.all(3.0)),
              ),
              Expanded(
                flex: 26,
                child: _CardHeadProfile(53, 'Class Hours\nTaken'),
              ),
              Expanded(
                flex: 10,
                child: Padding(padding: EdgeInsets.all(3.0)),
              ),
              Expanded(
                flex: 26,
                child: _CardHeadProfile(189, '\nBeauty IQ'),
              ),
              Expanded(
                flex: 19,
                child: Padding(padding: EdgeInsets.all(3.0)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _CardHeadProfile extends StatelessWidget {
  final int value;
  final String description;

  const _CardHeadProfile(this.value, this.description);

  @override
  Widget build(BuildContext context) {
    // return Container with 50% width of screen

    return Container(
      margin: const EdgeInsets.only(top: 10, bottom: 10),
      padding: const EdgeInsets.fromLTRB(5, 10, 5, 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        border: Border.all(
          color: Colors.white,
          width: 2,
        ),
      ),
      child: Column(
        children: <Widget>[
          Text(
            value.toString(),
            style: const TextStyle(
              color: PersonalColors.colorPrimary,
              fontSize: 14.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            description,
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 10.0,
              fontWeight: FontWeight.w400,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class _DetailAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_literals_to_create_immutables
    return Column(children: [
      const _CardsClasses(
          'Extensions 101',
          'Teacher',
          'Korinthia Marsh',
          'Hands on Lesson',
          'Dates',
          'March 20th - 25th',
          'Beverly Hills',
          '20 Hours'),
      const _CardsClasses(
          'Extensions 101',
          'Teacher',
          'Korinthia Marsh',
          'Hands on Lesson',
          'Dates',
          'March 20th - 25th',
          'Beverly Hills',
          '20 Hours'),
      const _CardsClasses(
          'Extensions 101',
          'Teacher',
          'Korinthia Marsh',
          'Hands on Lesson',
          'Dates',
          'March 20th - 25th',
          'Beverly Hills',
          '20 Hours'),
    ]);
  }
}

class _CardsClasses extends StatelessWidget {
  final String title;
  final String subtitle1;
  final String subtitle2;
  final String subtitle3;
  final String subtitle4;
  final String subtitle5;
  final String subtitle6;
  final String hours;

  const _CardsClasses(
    this.title,
    this.subtitle1,
    this.subtitle2,
    this.subtitle3,
    this.subtitle4,
    this.subtitle5,
    this.subtitle6,
    this.hours,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(padding: const EdgeInsets.only(top: 20)),
        Card(
          elevation: 1,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    // two text start and end
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          title,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: PersonalColors.colorPrimary,
                          ),
                        ),
                        Text(
                          hours,
                          style: const TextStyle(
                              fontSize: 12,
                              color: PersonalColors.textColorLight),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(subtitle1,
                              style: const TextStyle(
                                  fontSize: 12,
                                  color: PersonalColors.textColorLight)),
                          Text(subtitle2,
                              style: const TextStyle(
                                  fontSize: 12,
                                  color: PersonalColors.textColorLight)),
                          Text(subtitle3,
                              style: const TextStyle(
                                  fontSize: 12,
                                  color: PersonalColors.textColorLight)),
                        ],
                      ),
                    ),
                    Container(
                      width: 2,
                      height: 40,
                      //margin right
                      margin: const EdgeInsets.only(left: 20, right: 20),
                      color: PersonalColors.textColorLight,
                    ),
                    Expanded(
                      // margin left

                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(subtitle4,
                              style: const TextStyle(
                                  fontSize: 12,
                                  color: PersonalColors.textColorLight)),
                          Text(subtitle5,
                              style: const TextStyle(
                                  fontSize: 12,
                                  color: PersonalColors.textColorLight)),
                          Row(children: <Widget>[
                            const Icon(
                              Icons.location_on,
                              size: 12,
                              color: PersonalColors.textColorLight,
                            ),
                            Text(subtitle6,
                                style: const TextStyle(
                                    fontSize: 12,
                                    color: PersonalColors.textColorLight))
                          ]),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

class _AppBarEducator extends StatelessWidget with PreferredSizeWidget {
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
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
