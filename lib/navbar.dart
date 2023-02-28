import 'package:flutter/material.dart';
import 'package:geekiga/Pages/Chart.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'Pages/profile.dart';
import 'Pages/watchlist.dart';
import 'Pages/home.dart';
import 'Pages/download.dart';

const Color warnaEmas = Color.fromARGB(255, 184, 137, 33);

class Navbar extends StatefulWidget {
  int currentIndex =0;
  List pages = [const HomePage(), const ChartPage(), const WatchListPage(), const DownloadPage()];

  Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.pages[widget.currentIndex],
      bottomNavigationBar: GNav(
          iconSize: 15,
          gap: 4, 
          backgroundColor: Color.fromARGB(255, 0, 0, 0),
          color: Colors.white,
          activeColor: Color.fromARGB(255, 184, 137, 33),
          tabBorderRadius: 30,
          haptic: true,
          tabBackgroundColor: Colors.transparent,
          padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 25),
          onTabChange: (index) {
            setState(() {
              widget.currentIndex = index;
            });
          },
          selectedIndex: 0,
          tabs: const [
          
          GButton(icon: Icons.home, text: "Home"),
          GButton(icon: Icons.show_chart_outlined, text: "Top Movies"),
          GButton(icon: Icons.bookmarks, text: "Watch List"),
          GButton(icon: Icons.file_download_outlined, text: "Download"),
          
        ])  ,
    );
  }
}