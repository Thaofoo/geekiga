import 'package:flutter/material.dart';

class MoviePage extends StatelessWidget {
  String movie_title;
  String movie_year;
  String movie_img;
  String movie_desc;

  MoviePage(this.movie_title, this.movie_year, this.movie_img, this.movie_desc,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Color(0xFFF292B37),
                            borderRadius: BorderRadius.circular(10)),
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Color(0xFFF292B37),
                            borderRadius: BorderRadius.circular(10)),
                        child: Icon(
                          Icons.download,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Color(0xFFF292B37),
                            borderRadius: BorderRadius.circular(10)),
                        child: Icon(
                          Icons.share,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
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
                        'Dalam suatu sejarah alternatif sekitar 1800 tahun yang lalu, seorang manusia bernama Ymir Fritz berubah menjadi raksasa mirip manusia yang dikenal sebagai Titan (巨人 Kyojin) setelah melakukan perjanjian dengan "Iblis dari Seluruh Bumi". Ymir kemudian mati 13 tahun kemudian sebagai "efek samping dari kekuatan tersebut".',
                        style: TextStyle(
                          // color: Colors.white,
                          fontSize: 14,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ],
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
