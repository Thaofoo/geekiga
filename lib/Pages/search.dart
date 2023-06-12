import 'package:flutter/material.dart';
import 'package:geekiga/models/movieList.dart';
import 'package:geekiga/models/movieSearch.dart';
import 'package:provider/provider.dart';

class Search extends StatelessWidget {
  const Search({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SearchPage(),
    );
  }
}

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  // final fieldText = TextEditingController();2
  final TextEditingController _controller = new TextEditingController();

  // void clearText() {
  //   fieldText.clear();
  // }

  // final List<MovieList> movie_list = [];

  static List<MovieSearch> movie_list = [
    MovieSearch("Shingeki No Kyojin", "2013", "assets/images/AOT.webp"),
    MovieSearch("Top Gun Maverick", "2022", "assets/images/TGM.jpg"),
    MovieSearch("Chainsaw Man", "2022", "assets/images/CSM.jpg"),
    MovieSearch(
        "Spider-Man: No Way Home", "2021", "assets/images/Spiderman.jpeg"),
    MovieSearch("Spy X Family", "2022", "assets/images/SXF.jpg"),
    MovieSearch("Interstellar", "2014", "assets/images/interstellar.jpg"),
    MovieSearch("The Batman", "2022", "assets/images/batman.jpg"),
    MovieSearch(
        "John Wick: Chapter 3 - Parabellum", "2019", "assets/images/JW.jpg"),
    MovieSearch("Kimi No Nawa", "2016", "assets/images/KNN.webp"),
    MovieSearch("1917", "2020", "assets/images/1917-portrait.jpg"),
    MovieSearch("Mortal Kombat", "2021", "assets/images/MK-Portrait.webp")
  ];

  List<MovieSearch> display_list = List.from(movie_list);

  void updateList(String value) {
    //function buat filter out list
    setState(() {
      display_list = movie_list
          .where((element) =>
              element.movie_title!.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30.0,
            ),
            TextField(
              onChanged: (value) => updateList(value),
              // style: TextStyle(color: Colors.white),
              controller: _controller,
              decoration: InputDecoration(
                filled: true,
                // fillColor: Color.fromARGB(255, 44, 44, 44),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide.none,
                ),
                hintText: "Search",
                hintStyle: const TextStyle(
                    // color: Colors.white,
                    ),
                suffixIcon: IconButton(
                  onPressed: () {
                    _controller.clear();
                  },
                  icon: const Icon(Icons.clear),
                ),
                prefixIcon: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(Icons.arrow_back),
                ),
                // suffixIconColor: Color.fromARGB(255, 255, 255, 255),
                // prefixIconColor: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Expanded(
              child: display_list.length == 0
                  ? const Center(
                      child: Text(
                        "No result found",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  : ListView.builder(
                      itemCount: display_list.length,
                      itemBuilder: (context, index) => ListTile(
                        title: Text(
                          display_list[index].movie_title!,
                          style: const TextStyle(
                            fontSize: 14,
                          ),
                        ),
                        subtitle: Text(
                          display_list[index].movie_year!,
                          style: const TextStyle(
                              color: Color.fromARGB(255, 72, 72, 72)),
                        ),
                        leading: SizedBox(
                          height: 100,
                          width: 50,
                          child: Image(
                              image: AssetImage(display_list[index].movie_img!),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
