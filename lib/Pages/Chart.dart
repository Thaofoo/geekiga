import 'package:flutter/material.dart';
import 'package:geekiga/models/movieList.dart';
import 'package:provider/provider.dart';
import '../providers/movieProvider.dart';

class ChartPage extends StatelessWidget {
  const ChartPage({super.key});

  @override
  Widget build(BuildContext context) {
    // final movieList = Provider.of<Movies>(context, listen: false);
    // final data = Provider.of<MovieList>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Popular Rank",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        toolbarHeight: 75,
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          // return ListTile(
          //   // tileColor: ,
          //   // leading: CircleAvatar(
          //   //   foregroundImage: AssetImage("assets/images/geekiga.png"),
          //   // ),
          //   leading: ClipRRect(
          //     borderRadius: BorderRadius.circular(15),
          //     child: Image(
          //       image: AssetImage("assets/images/KNN.webp"),
          //       height: 180,
          //       width: 100,
          //       fit: BoxFit.cover,
          //     ),
          //   ),

          //   title: Text('Judul Film'),
          //   subtitle: Text("Genre Film"),
          //   trailing: Text("Rating"),
          // );
          return Container(
            margin: EdgeInsets.fromLTRB(
              15,
              5,
              30,
              15,
            ),
            height: 115,
            child: Row(children: [
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
              Container(
                width: 200,
                child: Text(
                  "Kimi No Nawa TES JUDUL PANJANG BANGET DEH YA HAHAHAHAA",
                  style: TextStyle(fontSize: 16),
                ),
              )
            ]),
          );
        },
      ),
    );
  }
}
