import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:geekiga/app_theme.dart';
import 'package:geekiga/providers/authService.dart';
import 'package:geekiga/providers/favorite.dart';
import 'package:geekiga/wrapper.dart';
import 'package:provider/provider.dart';
import 'package:geekiga/providers/movie_provider.dart';

ValueNotifier<bool> isSwitched = ValueNotifier<bool>(true);

void main(List<String> args) async {
  // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  // getUserDetail();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider<AuthService>(create: (_) => AuthService()),
          ChangeNotifierProvider(
            create: (ctx) => Movies(),
          ),
          ChangeNotifierProvider(
            create: (ctx) => Favorite(),
          ),
          // ChangeNotifierProvider(
          //   create: (ctx) => MovieList(),
          // ),
        ],
        child: ValueListenableBuilder<bool>(
          valueListenable: isSwitched,
          builder: (context, value, child) => MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Geekiga',
              theme: value ? temaGelap : temaTerang,
              home: Wrapper()),
        ));
  }
}
