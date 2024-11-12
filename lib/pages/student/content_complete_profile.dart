import 'package:flutter/material.dart';
import 'package:mybeautyiq/pages/educator/my_classes.dart';
import 'package:mybeautyiq/pages/student/content_complete_profile_1.dart';
import 'package:mybeautyiq/pages/student/welcome.dart';

class CompleteProfileStudent extends StatefulWidget {
  @override
  _CompleteProfileStudentState createState() => _CompleteProfileStudentState();
}

class _CompleteProfileStudentState extends State<CompleteProfileStudent> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    List<Widget> _widgets = [
      CompleteProfileStudent1(changeView: (index) {
        setState(() {
          _currentIndex = index;
        });
      }),
      WelcomeStudent(changeView: (index) {
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
