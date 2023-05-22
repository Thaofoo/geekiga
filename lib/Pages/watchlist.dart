import 'package:flutter/material.dart';
import 'package:geekiga/models/FavMovies.dart';
import 'package:geekiga/providers/favorite.dart';
import 'package:provider/provider.dart';

class WatchListPage extends StatelessWidget {
  const WatchListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final movieData = Provider.of<Favorite>(context, listen: false);

    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Watchlist Page",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
          centerTitle: true,
          toolbarHeight: 75,
        ),
        body: ListView.builder(
            itemCount: movieData.Fav.length,
            itemBuilder: (context, counter) {
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
                      child: Image.asset(
                          "${movieData.Fav.values.toList()[counter].movieImg}"),
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                  Container(
                    width: 200,
                    child: Text(
                      "${movieData.Fav.values.toList()[counter].movieTitle}",
                      style: TextStyle(fontSize: 16),
                    ),
                  )
                ]),
              );
            }));
  }
}
