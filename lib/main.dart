import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:geekiga/pages/landing.dart';
import 'package:geekiga/appTheme.dart';

ValueNotifier<bool> isSwitched = ValueNotifier<bool>(true);

void main(List<String> args) {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext buildContext) {
    return ValueListenableBuilder<bool>(
      valueListenable: isSwitched,
      builder: (context, value, child) => MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Geekiga',
          theme: value ? temaGelap : temaTerang,
          home: LandingPage()),
    );
  }
}
