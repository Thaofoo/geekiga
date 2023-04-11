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
                builder: (context) => MoviePage(data.movie_title,
                    data.movie_year, data.movie_img, data.movie_desc)));
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
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     Column(
              //         crossAxisAlignment: CrossAxisAlignment.start,
              //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //         children: [
              //           Padding(
              //             padding: const EdgeInsets.fromLTRB(2, 10, 0, 5),
              //             child: SizedBox(
              //               width: 190,
              //               child: Text(
              //                 data.movie_title,
              //                 maxLines: 1,
              //                 overflow: TextOverflow.ellipsis,
              //               ),
              //             ),
              //           ),
              //           // Row(
              //           //   mainAxisAlignment: MainAxisAlignment.start,
              //           //   children: [
              //           //     const Padding(
              //           //       padding: EdgeInsets.fromLTRB(2, 2, 8, 0),
              //           //       child: Text(
              //           //         "• Science",
              //           //       ),
              //           //     ),
              //           //     Padding(
              //           //       padding: const EdgeInsets.fromLTRB(0, 2, 8, 0),
              //           //       child: Text(
              //           //         "• Year ${data.movie_year}",
              //           //       ),
              //           //     ),
              //           //     const Padding(
              //           //       padding: EdgeInsets.fromLTRB(0, 2, 8, 0),
              //           //       child: Text(
              //           //         "• 2.5k View",
              //           //       ),
              //           //     ),
              //           //   ],
              //           // ),
              //         ]),
              //     // IconButton(
              //     //   splashRadius: 10,
              //     //   onPressed: () {},
              //     //   icon: const Icon(Icons.favorite_border_rounded),
              //     //   iconSize: 20,
              //     // )
              //   ],
              // )
            ],
          ),
        ),
      ),
    );
  }
}
