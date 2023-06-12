import 'package:flutter/material.dart';
import 'package:geekiga/pages/signIn.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image:
            DecorationImage(image: AssetImage("assets/images/tagline_bg.png")),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [
            0.1,
            0.9,
          ],
          colors: [
            Color.fromARGB(255, 58, 29, 7),
            Color.fromARGB(255, 0, 0, 0),
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(0),
          child: AppBar(
            backgroundColor: Colors.black,
          ),
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                child: Center(
                  child: Container(
                      width: 300,
                      height: 250,
                      child: Image.asset('assets/images/Splash.png')),
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(23, 20, 23, 50),
                child: Text(
                  "Start watching your favorite movies and shows with Geekiga now! Experience a simple and fast service, tailored just for you!",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              Container(
                height: 50,
                width: 300,
                margin: const EdgeInsets.only(top: 15),
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 81, 58, 9),
                    borderRadius: BorderRadius.circular(45)),
                child: TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (_) => const Login()));
                  },
                  child: const Text(
                    'Start Watching',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w800),
                  ),
                ),
              ),
              const SizedBox(
                height: 80,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
