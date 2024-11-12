import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

final temaDark = ThemeData.dark().copyWith(
    appBarTheme: const AppBarTheme(
  systemOverlayStyle:
      SystemUiOverlayStyle(statusBarBrightness: Brightness.dark),
));
