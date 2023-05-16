import 'package:flutter/material.dart';
import 'package:geekiga/providers/favorite.dart';
import 'package:geekiga/providers/favorite.dart';
import 'package:provider/provider.dart';

class MoviePage extends StatelessWidget {
  String movie_id;
  String movie_title;
  String movie_year;
  String movie_img;
  String movie_desc;

  MoviePage(this.movie_id, this.movie_title, this.movie_year, this.movie_img,
      this.movie_desc,
      {super.key});

  @override
  Widget build(BuildContext context) {
    final favorite = Provider.of<Favorite>(context, listen: false);
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      //   foregroundColor: Colors.transparent,
      //   elevation: 0,
      //   actions: <Widget>[],
      // ),
      body: Stack(
        children: [
          Opacity(
            opacity: 0.6,
            child: Image.asset(
              movie_img,
              height: 280,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          SingleChildScrollView(
            child: SafeArea(
                child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back,
                          // color: Colors.white,
                          size: 30,
                          weight: 100,
                        ),
                      ),
                      // InkWell(
                      //   onTap: () {},
                      //   child: Icon(
                      //     Icons.favorite_border,
                      //     // color: Colors.white,
                      //     size: 35,
                      //   ),
                      // ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromARGB(170, 0, 0, 0)
                                      .withOpacity(0.5),
                                  spreadRadius: 1,
                                  blurRadius: 8),
                            ]),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            movie_img,
                            height: 220,
                            width: 150,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 40, top: 40),
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Color.fromARGB(255, 184, 137, 33),
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromARGB(255, 184, 137, 33),
                                spreadRadius: 2,
                                blurRadius: 8,
                              )
                            ]),
                        child: Icon(
                          Icons.play_arrow,
                          color: Colors.white,
                          size: 60,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 15),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 90, vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Color(0xFFF292B37),
                            borderRadius: BorderRadius.circular(15)),
                        child: IconButton(
                            onPressed: () {
                              (favorite.AddFav(
                                          movie_id, movie_title, movie_img) ==
                                      true)
                                  ? ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                          content: Text(
                                              "Berhasil Ditambahkan ke dalam Watchlist"),
                                          duration:
                                              Duration(milliseconds: 500)))
                                  : ScaffoldMessenger.of(context)
                                      .showSnackBar(SnackBar(
                                      content: Text(
                                          "Berhasil Dihapus dari Watchlist"),
                                      duration: Duration(milliseconds: 500),
                                    ));
                            },
                            icon: Icon(
                              Icons.bookmark_add_rounded,
                              color: Colors.white,
                              size: 30,
                            )),
                      ),
                      // Container(
                      //   height: 60,
                      //   width: 60,
                      //   padding: EdgeInsets.all(5),
                      //   decoration: BoxDecoration(
                      //       color: Color(0xFFF292B37),
                      //       borderRadius: BorderRadius.circular(15)),
                      //   child: IconButton(
                      //       onPressed: () {
                      //         favorite.RemoveFav(movie_id);
                      //         ScaffoldMessenger.of(context)
                      //             .showSnackBar(SnackBar(
                      //           content:
                      //               Text("Berhasil Dihapus dari Watchlist"),
                      //           duration: Duration(milliseconds: 500),
                      //         ));
                      //       },
                      //       icon: Icon(
                      //         Icons.bookmark_remove_rounded,
                      //         color: Colors.white,
                      //         size: 30,
                      //       )),
                      // ),
                    ],
                  ),
                ),
                Container(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          movie_title,
                          style: TextStyle(
                            // color: Colors.white,
                            fontWeight: FontWeight.w800,
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          movie_desc,
                          style: TextStyle(
                            // color: Colors.white,
                            fontSize: 14,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10),
              ],
            )),
          )
        ],
      ),
    );
  }
}
