import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

const Color warnaUngu = Color.fromARGB(255, 251, 185, 246);
const Color warnaOren = Color.fromARGB(255, 255, 215, 180);

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
        appBar: AppBar(
            toolbarHeight: 60,
            elevation: 0,
            backgroundColor: Color.fromARGB(0, 255, 255, 255),
            title: Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Padding(
                        padding: EdgeInsets.fromLTRB(16, 0, 20, 8),
                        child: Icon(Icons.menu),
                      ),
                      Image(
                          image: AssetImage(
                        'assets/small-logo.png',
                      )),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 16, 0),
                    child: CircleAvatar(
                      radius: 15,
                      backgroundColor: Colors.white,
                    ),
                  ),
                ],
              ),
            )),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                  child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(bottom: 20, top: 10),
                    child: Text("Featured",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Inter")),
                  ),
                  SizedBox(
                    height: 240,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Featured(image: warMovie),
                        Featured(
                          image: mortalKombat,
                        ),
                        Featured(
                          image: warMovie,
                        ),
                        Featured(
                          image: mortalKombat,
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 15, top: 30),
                    child: Text("Popular",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Inter")),
                  ),
                  SizedBox(
                    height: 180,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Poster(image: aot),
                        Poster(image: aot1),
                        Poster(image: aot2),
                        Poster(image: aot3),
                        Poster(image: aot4),
                        Poster(image: aot1),
                        Poster(image: aot2),
                        Poster(image: aot),
                        Poster(image: aot1),
                        Poster(image: aot2),
                        Poster(image: aot3),
                        Poster(image: aot4),
                        Poster(image: aot1),
                        Poster(image: aot2),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 15, top: 30),
                    child: Text("Animated Series",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Inter")),
                  ),
                  SizedBox(
                    height: 180,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Poster(image: aot),
                        Poster(image: aot1),
                        Poster(image: aot2),
                        Poster(image: aot3),
                        Poster(image: aot4),
                        Poster(image: aot1),
                        Poster(image: aot2),
                        Poster(image: aot),
                        Poster(image: aot1),
                        Poster(image: aot2),
                        Poster(image: aot3),
                        Poster(image: aot4),
                        Poster(image: aot1),
                        Poster(image: aot2),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 15, top: 30),
                    child: Text("Action",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Inter")),
                  ),
                  SizedBox(
                    height: 180,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Poster(image: aot),
                        Poster(image: aot1),
                        Poster(image: aot2),
                        Poster(image: aot3),
                        Poster(image: aot4),
                        Poster(image: aot1),
                        Poster(image: aot2),
                        Poster(image: aot),
                        Poster(image: aot1),
                        Poster(image: aot2),
                        Poster(image: aot3),
                        Poster(image: aot4),
                        Poster(image: aot1),
                        Poster(image: aot2),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 15, top: 30),
                    child: Text("Adventure",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Inter")),
                  ),
                  SizedBox(
                    height: 180,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Poster(image: aot),
                        Poster(image: aot1),
                        Poster(image: aot2),
                        Poster(image: aot3),
                        Poster(image: aot4),
                        Poster(image: aot1),
                        Poster(image: aot2),
                        Poster(image: aot),
                        Poster(image: aot1),
                        Poster(image: aot2),
                        Poster(image: aot3),
                        Poster(image: aot4),
                        Poster(image: aot1),
                        Poster(image: aot2),
                      ],
                    ),
                  ),
                ],
              ))
            ],
          ),
        ),
        bottomNavigationBar: GNav(
            iconSize: 20,
            gap: 4,
            backgroundColor: warnaUngu,
            color: Colors.white,
            activeColor: Colors.white,
            tabBackgroundColor: warnaOren,
            padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 25),
            onTabChange: (index) {
              print(index);
            },
            tabs: const [
              GButton(icon: Icons.home, text: "Home"),
              GButton(icon: Icons.favorite, text: "Like"),
              GButton(icon: Icons.add_box_rounded, text: "Write"),
              GButton(icon: Icons.explore, text: "Explore"),
              GButton(icon: Icons.person, text: "Profile"),
            ]));
  }
}

class Featured extends StatelessWidget {
  final String image;

  Featured({
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 35),
      child: Container(
        width: 390,
        height: 300,
        color: Colors.transparent,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image(
            image: AssetImage(image),
            width: 280,
            height: 130,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

class Poster extends StatelessWidget {
  final String image;

  Poster({
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 2.5, right: 2.5),
      child: Container(
        width: 120,
        height: 180,
        color: Colors.transparent,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image(
            image: AssetImage(image),
            width: 120,
            height: 180,
            fit: BoxFit.fitWidth,
          ),
        ),
      ),
    );
  }
}

//Images Featured
String warMovie = "assets/1917.jpg";
String mortalKombat = "assets/mortalkombat.jpeg";

//Images Poster
String aot = "assets/image 6.png";
String aot1 = "assets/image 8.png";
String aot2 = "assets/image 16.png";
String aot3 = "assets/image 11.png";
String aot4 = "assets/image 14.png";
