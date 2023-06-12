import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../pages/moviePage.dart';
import '../models/movieList.dart';

class FeaturedMovie extends StatelessWidget {
  const FeaturedMovie({super.key});

  @override
  Widget build(BuildContext context) {
    final data = Provider.of<MovieList>(context);

    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => MoviePage(
                    data.id,
                    data.movie_title,
                    data.movie_year,
                    data.movie_img,
                    data.movie_desc,
                    data.movie_url)));
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 15),
        child: Container(
          width: 100,
          height: 200,
          color: Colors.transparent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image(
                  image: AssetImage(data.movie_img),
                  width: 100,
                  height: 180,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
