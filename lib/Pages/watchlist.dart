import 'package:flutter/material.dart';
import 'package:geekiga/providers/authService.dart';
import 'package:geekiga/providers/favorite.dart';
import 'package:provider/provider.dart';
import '../pages/moviePage.dart';

class WatchListPage extends StatefulWidget {
  const WatchListPage({super.key});

  @override
  State<WatchListPage> createState() => _WatchListPageState();
}

class _WatchListPageState extends State<WatchListPage> {
  @override
  void initState() {
    Provider.of<Favorite>(context, listen: false).readFavorite(
        Provider.of<AuthService>(context, listen: false).userId ?? "NN");
  }

  @override
  Widget build(BuildContext context) {
    final movieData = Provider.of<Favorite>(context, listen: false);
    // final data = Provider.of<MovieList>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Watchlist Page",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        toolbarHeight: 75,
      ),
      body: ListView.builder(
        itemCount: movieData.fav3.length,
        itemBuilder: (context, counter) {
          return InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MoviePage(
                            movieData.fav3.toList()[counter].id,
                            movieData.fav3.toList()[counter].movie_title,
                            movieData.fav3.toList()[counter].movie_year,
                            movieData.fav3.toList()[counter].movie_img,
                            movieData.fav3.toList()[counter].movie_desc,
                            movieData.fav3.toList()[counter].movie_url,
                          ))).then((value) {
                initState();
              });
            },
            child: Container(
              margin: const EdgeInsets.fromLTRB(
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
                    width: 80,
                    height: 200,
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Image(
                      image: AssetImage(movieData.fav3[counter].movie_img),
                      width: 80,
                      height: 180,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  width: 170,
                  child: Text(
                    movieData.fav3[counter].movie_title,
                    style: const TextStyle(fontSize: 16),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    movieData.removeFav(
                      movieData.fav3[counter].id,
                      Provider.of<AuthService>(context, listen: false).userId ??
                          "No Name",
                    );
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text("Berhasil Dihapus dari Watchlist"),
                      duration: Duration(milliseconds: 500),
                    ));
                    setState(() {
                      initState();
                    });
                  },
                  icon: const Icon(Icons.delete),
                )
              ]),
            ),
          );
        },
      ),
    );
  }
}
