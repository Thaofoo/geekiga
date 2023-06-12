import 'package:flutter/material.dart';
import 'package:geekiga/models/movieList.dart';
import 'package:provider/provider.dart';
import '../providers/movie_provider.dart';

class ChartPage extends StatelessWidget {
  const ChartPage({super.key});

  @override
  Widget build(BuildContext context) {
    // final movieList = Provider.of<Movies>(context, listen: false);
    // final data = Provider.of<MovieList>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Top 10 Chart",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w900,
              fontStyle: FontStyle.italic),
        ),
        centerTitle: true,
        toolbarHeight: 75,
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: EdgeInsets.fromLTRB(
              15,
              5,
              30,
              15,
            ),
            height: 115,
            child: Row(children: [
              Container(
                width: 20,
                child: Text(
                  "${index + 1}",
                  style: TextStyle(
                      fontSize: 16,
                      // color: Theme.of(context).colorScheme.primary,
                      fontWeight: FontWeight.w800),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
                child: Container(
                  child: Image.asset("assets/images/KNN.webp"),
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 5, bottom: 5),
                      child: Container(
                        width: 180,
                        child: Text(
                          "Kimi No Nawa",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5),
                      child: Container(
                        width: 180,
                        child: Text(
                          "Animated · Romance",
                          style: TextStyle(
                            fontSize: 14,
                            fontStyle: FontStyle.italic,
                            color: Color.fromARGB(255, 224, 144, 79),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 180,
                      // padding: const EdgeInsets.only(bottom: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: 20,
                            child: Text(
                              "5.0",
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                          Container(
                              width: 10,
                              child: Icon(
                                Icons.star_rounded,
                                size: 16,
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          );
        },
      ),
    );
  }
}
