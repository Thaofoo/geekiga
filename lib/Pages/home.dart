import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:geekiga/Pages/search.dart';
import 'package:geekiga/Pages/drawer.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/src/widgets/image.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Home',
      theme: ThemeData(primarySwatch: Colors.amber),
      home: Home(title: 'Home'),
    );
  }
}

class Home extends StatefulWidget {
  Home({required this.title});

  final String title;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _current = 0;
  final CarouselController _controller = CarouselController();
  final List<String> imgList = [
    'images/1917.jpg',
    'images/CSM-F.png',
    'images/mortalkombat.jpeg',
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
          systemOverlayStyle: SystemUiOverlayStyle.light,
          iconTheme: IconThemeData(color: Colors.white),
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
                    )),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(16, 0, 0, 0),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  Color.fromARGB(0, 255, 255, 255)),
                          onPressed: () {
                            Navigator.of(context, rootNavigator: true).push(
                              MaterialPageRoute(
                                  builder: (context) => const Search()),
                            );
                          },
                          child: Icon(
                            Icons.search,
                            color: Colors.white,
                          )),
                    ),
                  ],
                ),
              ],
            ),
          )),
      drawer: DrawerWidget(),
      body: Container(
        child: Column(
          children: [
            Flexible(
                child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
                  child: Text("Featured",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Inter")),
                ),
                CarouselSlider(
                  options: CarouselOptions(
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 4),
                    aspectRatio: 2.0,
                    viewportFraction: 0.85,
                    onPageChanged: (index, carouselReason) {
                      print(index);
                      setState(() {
                        _current = index;
                      });
                    },
                    enlargeCenterPage: true,
                  ),
                  items: imgList
                      .map((item) => Container(
                            child: Container(
                              margin: EdgeInsets.all(1.0),
                              child: ClipRRect(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                  child: Stack(
                                    children: <Widget>[
                                      Image.asset(
                                        item,
                                        fit: BoxFit.cover,
                                        width: 10000,
                                        height: 6000,
                                      ),
                                      Positioned(
                                        bottom: 0.0,
                                        left: 0.0,
                                        right: 0.0,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                              colors: [
                                                Color.fromARGB(200, 0, 0, 0),
                                                Color.fromARGB(0, 0, 0, 0)
                                              ],
                                              begin: Alignment.bottomCenter,
                                              end: Alignment.topCenter,
                                            ),
                                          ),
                                          padding: EdgeInsets.symmetric(
                                              vertical: 10.0, horizontal: 20.0),
                                          child: Text(
                                            'Trending ${imgList.indexOf(item) + 1}',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )),
                            ),
                          ))
                      .toList(),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: imgList.asMap().entries.map((entry) {
                    return GestureDetector(
                      onTap: () => _controller.animateToPage(entry.key),
                      child: Container(
                        width: 8.0,
                        height: 8.0,
                        margin: EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 4.0),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color:
                                (Theme.of(context).brightness == Brightness.dark
                                        ? Colors.white
                                        : Color.fromARGB(255, 184, 137, 33))
                                    .withOpacity(
                                        _current == entry.key ? 0.9 : 0.4)),
                      ),
                    );
                  }).toList(),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Text("Popular",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Inter")),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: SizedBox(
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
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Text("Animated Series",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Inter")),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: SizedBox(
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
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Text("Action",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Inter")),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: SizedBox(
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
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Text("Adventure",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Inter")),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: SizedBox(
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
