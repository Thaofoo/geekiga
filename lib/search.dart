import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    String searchString = "";
    return Scaffold(
          backgroundColor: Colors.black,
          // appBar: AppBar(
          //   title: Text("Search"),
          // ),
          body: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: TextField(
                  onChanged: (value) {
                    setState(() {
                      searchString = value.toLowerCase();
                    });
                  },
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    labelText: 'Search',
                    hintText: 'Type Text Here',
                    enabledBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 72, 72, 72)),
                    ),
                    labelStyle: TextStyle(
                      color: Colors.white,
                    ),
                    suffixIcon: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Expanded(
                child: ListView(
                  children: [
                    ListTile(
                      subtitle: Text(
                        "Recent",
                        style:
                            TextStyle(color: Color.fromARGB(255, 66, 66, 66)),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "Shingeki No Kyojin",
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                      subtitle: Text(
                        "Series",
                        style:
                            TextStyle(color: Color.fromARGB(255, 72, 72, 72)),
                      ),
                      leading: SizedBox(
                        height: 100,
                        width: 50,
                        child: Image(
                            image: AssetImage("images/AOT.webp"),
                            fit: BoxFit.cover),
                      ),
                    ),
                    Divider(
                      color: Color.fromARGB(255, 69, 69, 69),
                      indent: 15,
                      endIndent: 15,
                    ),
                    ListTile(
                      subtitle: Text(
                        "Popular",
                        style:
                            TextStyle(color: Color.fromARGB(255, 72, 72, 72)),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "Top Gun Maverick",
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                      subtitle: Text(
                        "Movie",
                        style:
                            TextStyle(color: Color.fromARGB(255, 72, 72, 72)),
                      ),
                      leading: SizedBox(
                        height: 100,
                        width: 50,
                        child: Image(
                            image: AssetImage("images/TGM.jpg"),
                            fit: BoxFit.cover),
                      ),
                    ),
                    Divider(
                      color: Color.fromARGB(255, 69, 69, 69),
                      indent: 15,
                      endIndent: 15,
                    ),
                    ListTile(
                      title: Text(
                        "Chainsaw Man",
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                      subtitle: Text(
                        "Series",
                        style:
                            TextStyle(color: Color.fromARGB(255, 72, 72, 72)),
                      ),
                      leading: SizedBox(
                        height: 100,
                        width: 50,
                        child: Image(
                            image: AssetImage("images/CSM.jpg"),
                            fit: BoxFit.cover),
                      ),
                    ),
                    Divider(
                      color: Color.fromARGB(255, 69, 69, 69),
                      indent: 15,
                      endIndent: 15,
                    ),
                    ListTile(
                      title: Text(
                        "Spider-Man: No Way Home",
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                      subtitle: Text(
                        "Movie",
                        style:
                            TextStyle(color: Color.fromARGB(255, 72, 72, 72)),
                      ),
                      leading: SizedBox(
                        height: 100,
                        width: 50,
                        child: Image(
                            image: AssetImage("images/Spiderman.jpeg"),
                            fit: BoxFit.cover),
                      ),
                    ),
                    Divider(
                      color: Color.fromARGB(255, 69, 69, 69),
                      indent: 15,
                      endIndent: 15,
                    ),
                    ListTile(
                      title: Text(
                        "Spy X Family",
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                      subtitle: Text(
                        "Series",
                        style:
                            TextStyle(color: Color.fromARGB(255, 72, 72, 72)),
                      ),
                      leading: SizedBox(
                        height: 100,
                        width: 50,
                        child: Image(
                            image: AssetImage("images/SXF.jpg"),
                            fit: BoxFit.cover),
                      ),
                    ),
                    Divider(
                      color: Color.fromARGB(255, 69, 69, 69),
                      indent: 15,
                      endIndent: 15,
                    ),
                    ListTile(
                      title: Text(
                        "Interstellar",
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                      subtitle: Text(
                        "Movie",
                        style:
                            TextStyle(color: Color.fromARGB(255, 72, 72, 72)),
                      ),
                      leading: SizedBox(
                        height: 100,
                        width: 50,
                        child: Image(
                            image: AssetImage("images/interstellar.jpg"),
                            fit: BoxFit.cover),
                      ),
                    ),
                    Divider(
                      color: Color.fromARGB(255, 69, 69, 69),
                      indent: 15,
                      endIndent: 15,
                    ),
                    ListTile(
                      title: Text(
                        "John Wick Chapter 3: Parabellum",
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                      subtitle: Text(
                        "Movie",
                        style:
                            TextStyle(color: Color.fromARGB(255, 72, 72, 72)),
                      ),
                      leading: SizedBox(
                        height: 100,
                        width: 50,
                        child: Image(
                            image: AssetImage("images/JW.jpg"),
                            fit: BoxFit.cover),
                      ),
                    ),
                    Divider(
                      color: Color.fromARGB(255, 69, 69, 69),
                      indent: 15,
                      endIndent: 15,
                    ),
                    ListTile(
                      title: Text(
                        "Kimi No Nawa",
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                      subtitle: Text(
                        "Movie",
                        style:
                            TextStyle(color: Color.fromARGB(255, 72, 72, 72)),
                      ),
                      leading: SizedBox(
                        height: 100,
                        width: 50,
                        child: Image(
                            image: AssetImage("images/KNN.webp"),
                            fit: BoxFit.cover),
                      ),
                    ),
                    Divider(
                      color: Color.fromARGB(255, 69, 69, 69),
                      indent: 15,
                      endIndent: 15,
                    ),
                    ListTile(
                      title: Text(
                        "The Batman",
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                      subtitle: Text(
                        "Movie",
                        style:
                            TextStyle(color: Color.fromARGB(255, 72, 72, 72)),
                      ),
                      leading: SizedBox(
                        height: 100,
                        width: 50,
                        child: Image(
                            image: AssetImage("images/batman.jpg"),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
  }

  void setState(Null Function() param0) {}
}
