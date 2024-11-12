import 'package:flutter/material.dart';
import 'package:mybeautyiq/pages/educator/content_complete_profile_1.dart';
import 'package:mybeautyiq/pages/educator/content_complete_profile_2.dart';
import 'package:mybeautyiq/pages/educator/my_classes.dart';
import 'package:mybeautyiq/pages/educator/welcome.dart';

class CompleteProfileEducator extends StatefulWidget {
  @override
  _CompleteProfileEducatorState createState() =>
      _CompleteProfileEducatorState();
}

class _CompleteProfileEducatorState extends State<CompleteProfileEducator> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    List<Widget> _widgets = [
      CompleteProfileEducator1(changeView: (index) {
        setState(() {
          _currentIndex = index;
        });
      }),
      CompleteProfileEducator2(changeView: (index) {
        setState(() {
          _currentIndex = index;
        });
      }),
      WelcomeEducator(changeView: (index) {
        setState(() {
          _currentIndex = index;
        });
      }),
      MyClassesEducator()
    ];

    return Container(
      child: _widgets[_currentIndex],
    );
  }
}
