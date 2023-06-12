import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:geekiga/main.dart';
import 'package:geekiga/pages/search.dart';
import 'package:geekiga/pages/drawer.dart';
import 'package:geekiga/widgets/featured.dart';
import 'package:provider/provider.dart';
import '../widgets/homeCarousel.dart';
import '../providers/movie_provider.dart';

class Home extends StatelessWidget {
  Home({super.key});

  @override
  Widget build(BuildContext context) {
    final list = Provider.of<Movies>(context);
    final movie_list = list.movies_list;
    String logoGelap = 'assets/images/geekiga.png';
    String logoTerang = 'assets/images/geekigaDark.png';

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
                  children: [
                    Image(
                        image: new AssetImage(
                      (isSwitched.value == true) ? logoGelap : logoTerang,
                    ))
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              elevation: 0,
                              backgroundColor:
                                  const Color.fromARGB(0, 255, 255, 255)),
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
                const Padding(
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
                  child: Text("Featured",
                      style: TextStyle(
                          // color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
                          fontFamily: "Inter")),
                ),
                SizedBox(height: 240, child: HomeCarousel()),
                const Padding(
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Text("Popular",
                      style: TextStyle(
                          // color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
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
                              value: movie_list[index],
                              child: const FeaturedMovie()),
                      itemCount: 7,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Text("Animated Series",
                      style: TextStyle(
                          // color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
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
                              value: movie_list[index + 3],
                              child: const FeaturedMovie()),
                      itemCount: 7,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Text("Action",
                      style: TextStyle(
                          // color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
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
                              value: movie_list[index + 6],
                              child: const FeaturedMovie()),
                      itemCount: 5,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Text("Adventure",
                      style: TextStyle(
                          // color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
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
                              value: movie_list[index],
                              child: const FeaturedMovie()),
                      itemCount: movie_list.length,
                    ),
                  ),
                ),
                const SizedBox(
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
