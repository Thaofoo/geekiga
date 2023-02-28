import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:geekiga/Pages/search.dart';
import 'package:geekiga/Pages/drawer.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
        // drawer: Drawer(),
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          systemOverlayStyle: SystemUiOverlayStyle.light,
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
                    // Padding(
                    //   padding: EdgeInsets.fromLTRB(10, 0, 20, 0),
                    //   child: Icon(Icons.menu, color: Colors.white,),
                    // ),
                    Image(
                      image: AssetImage(
                        'images/geekiga.png',
                      )
                    ),
                  ],
                ),
                Row(children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(16, 0, 0, 0),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(0, 255, 255, 255)
                          ),  
                          onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const Search()),
                            );
                          }, 
                          child: Icon(Icons.search, color: Colors.white,)
                          ),
                        ),
                          
                  ],
                  ),
                  
                ],
              ),
            )),
        drawer: DrawerWidget(),
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
        
    );
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
String warMovie = "images/1917.jpg";
String mortalKombat = "images/mortalkombat.jpeg";

//Images Poster
String aot = "images/image 6.png";
String aot1 = "images/image 8.png";
String aot2 = "images/image 16.png";
String aot3 = "images/image 11.png";
String aot4 = "images/image 14.png";
