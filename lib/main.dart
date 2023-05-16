import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:geekiga/pages/landing.dart';
import 'package:geekiga/appTheme.dart';
import 'package:geekiga/providers/favorite.dart';
import 'package:geekiga/providers/userProvider.dart';
import 'package:provider/provider.dart';
import 'package:geekiga/providers/auth.dart';
import 'package:geekiga/providers/movieProvider.dart';

ValueNotifier<bool> isSwitched = ValueNotifier<bool>(true);

void main(List<String> args) {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext buildContext) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (ctx) => Auth(),
          ),
          ChangeNotifierProvider(
            create: (ctx) => Users(),
          ),
          ChangeNotifierProvider(
            create: (ctx) => Movies(),
          ),
          ChangeNotifierProvider(
            create: (ctx) => Favorite(),
          ),
        ],
        child: ValueListenableBuilder<bool>(
          valueListenable: isSwitched,
          builder: (context, value, child) => MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Geekiga',
              theme: value ? temaGelap : temaTerang,
              home: LandingPage()),
        ));
  }
}
