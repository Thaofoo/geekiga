import 'package:flutter/material.dart';
import 'package:geekiga/navbar.dart';
import 'Pages/home.dart';
// import 'search.dart';
// import 'profile.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.purple,
        ),
        home: Navbar());
  }
}
