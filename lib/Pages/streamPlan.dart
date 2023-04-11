import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:geekiga/pages/moviePage.dart';
import 'package:geekiga/pages/search.dart';
import 'package:geekiga/pages/drawer.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:geekiga/main.dart';
import 'package:geekiga/appTheme.dart';

class StreamPlan extends StatefulWidget {
  StreamPlan({required this.title});

  final String title;

  @override
  State<StreamPlan> createState() => _StreamPlanState();
}

class _StreamPlanState extends State<StreamPlan> {
  int _current = 0;
  final CarouselController _controller = CarouselController();
  final List<String> imgList = [
    'assets/plan.png',
    'assets/plan.png',
    'assets/plan.png',
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          'Stream Plan',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(0, 48, 48, 48),
        elevation: 0,
      ),
      body: Container(
        child: Column(
          children: [
            Flexible(
                child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                Divider(
                  height: 30,
                  color: Colors.grey[800],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
                  child: Text(
                      "Take your desired plan to get access  to our content easily",
                      style: TextStyle(
                          color: Color.fromARGB(255, 184, 137, 33),
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          fontFamily: "Inter")),
                ),
                SizedBox(
                  height: 20,
                ),
                CarouselSlider(
                  options: CarouselOptions(
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 4),
                    aspectRatio: 0.75,
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
                            child: InkWell(
                              // onTap: () {
                              //   Navigator.of(context, rootNavigator: true).push(
                              //     MaterialPageRoute(
                              //         builder: (context) => MoviePage()),
                              //   );
                              // },
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
                                          width: 400,
                                          height: 600,
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
                        margin: EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 4.0),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color:
                                (Theme.of(context).brightness == Brightness.dark
                                        ? Color.fromARGB(255, 184, 137, 33)
                                        : Color.fromARGB(255, 184, 137, 33))
                                    .withOpacity(
                                        _current == entry.key ? 0.9 : 0.4)),
                      ),
                    );
                  }).toList(),
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
