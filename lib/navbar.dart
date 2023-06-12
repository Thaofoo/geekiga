import 'package:flutter/material.dart';
import 'package:geekiga/Pages/chart.dart';
import 'packages/my_flutter_app_icons.dart';
import 'pages/watchlist.dart';
import 'pages/home.dart';

const Color warnaEmas = Color.fromARGB(255, 184, 137, 33);

// ignore: must_be_immutable
class Navbar extends StatefulWidget {
  int _currentIndex = 0;
  List pages = [
    Home(),
    const ChartPage(),
    const WatchListPage(),
  ];

  Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        body: widget.pages[widget._currentIndex],
        bottomNavigationBar: Container(
          decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 5),
                spreadRadius: 20,
                blurRadius: 29,
                color: Color.fromRGBO(0, 0, 0, 1),
              )
            ],
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
            child: Container(
              height: 70,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [
                    0,
                    1,
                  ],
                  colors: [
                    Color.fromARGB(255, 26, 13, 3),
                    Color.fromARGB(255, 0, 0, 0),
                  ],
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Theme(
                data: ThemeData(
                  highlightColor: Colors.transparent,
                  splashFactory: NoSplash.splashFactory,
                ),
                child: BottomNavigationBar(
                  onTap: (index) {
                    setState(() {
                      widget._currentIndex = index;
                    });
                  },
                  currentIndex: widget._currentIndex,
                  type: BottomNavigationBarType.fixed,
                  backgroundColor: Colors.transparent,
                  unselectedItemColor: const Color.fromARGB(135, 255, 255, 255),
                  selectedItemColor: const Color(0xff936e1a),
                  selectedLabelStyle: const TextStyle(color: Color(0xff936e1a)),
                  unselectedLabelStyle: const TextStyle(
                      color: Color.fromARGB(135, 255, 255, 255)),
                  showUnselectedLabels: true,
                  iconSize: 20,
                  selectedFontSize: 10,
                  unselectedFontSize: 10,
                  items: <BottomNavigationBarItem>[
                    BottomNavigationBarItem(
                      icon: Container(
                        margin: const EdgeInsets.only(bottom: 5, top: 3),
                        child: const Icon(
                          MyFlutterApp.home,
                        ),
                      ),
                      label: "  Home",
                    ),
                    BottomNavigationBarItem(
                      icon: Container(
                        margin: const EdgeInsets.only(bottom: 5, top: 3),
                        child: const Icon(
                          MyFlutterApp.chart,
                        ),
                      ),
                      label: ' Popular',
                    ),
                    BottomNavigationBarItem(
                      icon: Container(
                        margin: const EdgeInsets.only(bottom: 5, top: 3),
                        child: const Icon(
                          MyFlutterApp.watchlist,
                        ),
                      ),
                      label: 'Watchlist',
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
