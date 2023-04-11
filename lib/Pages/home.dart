import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:geekiga/pages/search.dart';
import 'package:geekiga/pages/drawer.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:geekiga/widgets/featured.dart';
import '../models/movieList.dart';
import 'package:provider/provider.dart';
import '../widgets/homeCarousel.dart';

class Home extends StatelessWidget {
  Home({super.key});

  @override
  Widget build(BuildContext context) {
    final List<MovieList> movie_list = [
      MovieList("Shingeki No Kyojin", "2013", "assets/images/AOT.webp",
          "INI NANTI PANJANG"),
      MovieList("Top Gun Maverick", "2022", "assets/images/TGM.jpg",
          "INI NANTI PANJANG"),
      MovieList(
          "Chainsaw Man", "2022", "assets/images/CSM.jpg", "INI NANTI PANJANG"),
      MovieList("Spider-Man: No Way Home", "2021",
          "assets/images/Spiderman.jpeg", "INI NANTI PANJANG"),
      MovieList(
          "Spy X Family", "2022", "assets/images/SXF.jpg", "INI NANTI PANJANG"),
      MovieList("Interstellar", "2014", "assets/images/interstellar.jpg",
          "INI NANTI PANJANG"),
      MovieList("The Batman", "2022", "assets/images/batman.jpg",
          "INI NANTI PANJANG"),
      MovieList("John Wick: Chapter 3 - Parabellum", "2019",
          "assets/images/JW.jpg", "INI NANTI PANJANG"),
      MovieList("Kimi No Nawa", "2016", "assets/images/KNN.webp",
          "INI NANTI PANJANG"),
      MovieList("1917", "2020", "assets/images/1917-portrait.jpg",
          "INI NANTI PANJANG"),
      MovieList("Mortal Kombat", "2021", "assets/images/MK-Portrait.webp",
          "INI NANTI PANJANG")
    ];
    final dataMain = movie_list;

    return Scaffold(
      // backgroundColor: Colors.black,
      appBar: AppBar(
          systemOverlayStyle: SystemUiOverlayStyle.light,
          // iconTheme: IconThemeData(color: Colors.white),
          toolbarHeight: 60,
          elevation: 0,
          // backgroundColor: Color.fromARGB(242, 255, 255, 255),
          title: Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Image(
                        image: AssetImage(
                      'assets/images/geekiga.png',
                    )),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(16, 0, 0, 0),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              elevation: 0,
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
                            color:
                                Theme.of(context).appBarTheme.iconTheme?.color,
                            // color: Colors.white,
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
                          // color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Inter")),
                ),
                SizedBox(height: 210, child: HomeCarousel()),
                const Padding(
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Text("Popular",
                      style: TextStyle(
                          // color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Inter")),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: SizedBox(
                    height: 180,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) =>
                          ChangeNotifierProvider.value(
                              value: dataMain[index], child: FeaturedMovie()),
                      itemCount: dataMain.length,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Text("Animated Series",
                      style: TextStyle(
                          // color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Inter")),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: SizedBox(
                    height: 180,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) =>
                          ChangeNotifierProvider.value(
                              value: dataMain[index], child: FeaturedMovie()),
                      itemCount: dataMain.length,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Text("Action",
                      style: TextStyle(
                          // color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Inter")),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: SizedBox(
                    height: 180,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) =>
                          ChangeNotifierProvider.value(
                              value: dataMain[index], child: FeaturedMovie()),
                      itemCount: dataMain.length,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Text("Adventure",
                      style: TextStyle(
                          // color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Inter")),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: SizedBox(
                    height: 180,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) =>
                          ChangeNotifierProvider.value(
                              value: dataMain[index], child: FeaturedMovie()),
                      itemCount: dataMain.length,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
