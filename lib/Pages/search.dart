import 'package:flutter/material.dart';
import 'package:geekiga/Pages/home.dart';
import 'package:geekiga/Pages/movie.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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

  // final fieldText = TextEditingController();
  final TextEditingController _controller = new TextEditingController();

  // void clearText() {
  //   fieldText.clear();
  // }

  static List<MovieList> movie_list = [
    MovieList("Shingeki No Kyojin", "Series", "images/AOT.webp"),
    MovieList("Top Gun Maverick", "Movie", "images/TGM.jpg"),
    MovieList("Chainsaw Man", "Series", "images/CSM.jpg"),
    MovieList("Spider-Man: No Way Home", "Movie", "images/Spiderman.jpeg"),
    MovieList("Spy X Family", "Series", "images/SXF.jpg"),
    MovieList("Interstellar", "Movie", "images/interstellar.jpg"),
    MovieList("The Batman", "Movie", "images/batman.jpg"),
    MovieList("John Wick Chapter 3: Parabellum", "Movie", "images/JW.jpg"),
    MovieList("Kimi No Nawa", "Movie", "images/KNN.webp"),
    MovieList("The Batman", "Movie", "images/batman.jpg"),
  ];

  List<MovieList> display_list = List.from(movie_list);

  void updateList(String value){
    //function buat filter out list
    setState(() {
      display_list = movie_list.where((element) => element.movie_title!.toLowerCase().contains(value.toLowerCase())).toList();
    });
  }

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Colors.black,
      // appBar: PreferredSize( //wrap with PreferredSize
      //           preferredSize: Size.fromHeight(1), //height of appbar
      //           child: AppBar(//appbar title
      //             backgroundColor: Colors.black,
      //             elevation: 0.0, //appbar background color
      //           ),
      //   ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            SizedBox(
              height: 30.0,
            ),

            TextField(
              onChanged: (value) => updateList(value),
              style: TextStyle(color: Colors.white),
              controller: _controller,
              decoration: InputDecoration(
                filled: true,
                fillColor: Color.fromARGB(255, 44, 44, 44),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0), 
                  borderSide: BorderSide.none,
                ),
                hintText: "Search",
                hintStyle: TextStyle(
                  color: Colors.white,
                ),
                
                suffixIcon: IconButton(
                  onPressed:  () {
                     _controller.clear();
                  },
                  icon: Icon(Icons.clear), 
                  
                ), 
                

                prefixIcon: IconButton(
                  onPressed: (){
                            Navigator.of(context).pop();
                          }, 
                  icon: Icon(Icons.arrow_back),
                  
                ),

                suffixIconColor: Color.fromARGB(255, 255, 255, 255),
                prefixIconColor: Color.fromARGB(255, 255, 255, 255),
              ),
            ),

            SizedBox(
              height: 1.0,
            ),

            // Text(
            //   "Popular",
            //   style: TextStyle(color: Color.fromARGB(255, 66, 66, 66)),
            // ),

            SizedBox(
              height: 10.0,
            ),

            Expanded(

              child: display_list.length == 0 ?Center(
                child: Text(
                  "No result found", 
                  style: TextStyle(
                    color: Colors.white, 
                    fontSize: 22.0, 
                    fontWeight: FontWeight.bold
                    ),
                ),
              )
              
              :ListView.builder(
                itemCount: display_list.length,
                itemBuilder: (context, index) => ListTile(
                  title: Text(
                    display_list[index].movie_title!,
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                  subtitle: Text(
                    display_list[index].movie_sub!,
                    style: TextStyle(color: Color.fromARGB(255, 72, 72, 72)),
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