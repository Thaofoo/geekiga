import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeCarousel extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeCarousel();
  }
}

class _HomeCarousel extends State<HomeCarousel> {
  int _current = 0;
  final CarouselController _controller = CarouselController();
  final List<String> imgList = [
    'assets/images/1917.jpg',
    'assets/images/CSM-F.png',
    'assets/images/mortalkombat.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    // final data = Provider.of<MovieList>(context);
    // final imgList = data.movie_img.characters;
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 4),
            aspectRatio: 2.0,
            viewportFraction: 0.85,
            onPageChanged: (index, carouselReason) {
              // print(index);
              setState(() {
                _current = index;
              });
            },
            enlargeCenterPage: true,
          ),
          items: imgList
              .map((item) => Container(
                    child: InkWell(
                      // onTap: () {
                      //   Navigator.push(
                      //       context,
                      //       MaterialPageRoute(
                      //           builder: (context) => MoviePage(
                      //               data.movie_title,
                      //               data.movie_year,
                      //               data.movie_img,
                      //               data.movie_desc)));
                      // },
                      child: Container(
                        margin: const EdgeInsets.all(1.0),
                        child: ClipRRect(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10.0)),
                            child: Stack(
                              children: <Widget>[
                                Image.asset(
                                  item,
                                  fit: BoxFit.cover,
                                  width: 10000,
                                  height: 5000,
                                ),
                                Positioned(
                                  bottom: 0.0,
                                  left: 0.0,
                                  right: 0.0,
                                  child: Container(
                                    decoration: const BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [
                                          Color.fromARGB(200, 0, 0, 0),
                                          Color.fromARGB(0, 0, 0, 0)
                                        ],
                                        begin: Alignment.bottomCenter,
                                        end: Alignment.topCenter,
                                      ),
                                    ),
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10.0, horizontal: 20.0),
                                    // child: Text(
                                    //   'Trending ${imgList.indexOf(item) + 1}',
                                    //   style: TextStyle(
                                    //     color: Colors.white,
                                    //     fontSize: 20.0,
                                    //     fontWeight: FontWeight.bold,
                                    //   ),
                                    // ),
                                  ),
                                ),
                              ],
                            )),
                      ),
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
                margin:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: (Theme.of(context).brightness == Brightness.dark
                            ? const Color.fromARGB(255, 184, 137, 33)
                            : const Color.fromARGB(255, 184, 137, 33))
                        .withOpacity(_current == entry.key ? 0.9 : 0.4)),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
