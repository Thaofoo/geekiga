import 'package:flutter/material.dart';
import 'package:geekiga/navbar.dart';
import 'package:geekiga/Pages/login.dart';

var _passwordVisible = false;

class Forget extends StatelessWidget {
  const Forget({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [
            0.1,
            0.40,
            0.6,
            0.9,
          ],
          colors: [
            Color.fromARGB(255, 58, 29, 7),
            Color.fromARGB(255, 32, 19, 8),
            Color.fromARGB(255, 21, 19, 17),
            Color.fromARGB(255, 0, 0, 0),
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Color.fromARGB(42, 0, 0, 0),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.white),
          // title: Text("Forget Page"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Center(
                  child: Container(
                      width: 100,
                      height: 30,
                      child: Image.asset('images/small-logo.png')),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(40),
                child: Center(
                  child: Text(
                    "Reset Password",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                        fontSize: 25),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(27, 5, 27, 30),
                child: Center(
                  child: Text(
                    "Please enter the email associated with your account and we'll send an email with instructions to reset your password",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.normal,
                        fontSize: 14),
                  ),
                ),
              ),
              Padding(
                //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextFormField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      fillColor: Color.fromARGB(255, 44, 44, 44),
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(45.0),
                          borderSide: BorderSide.none),
                      prefixIcon: Icon(Icons.person_outline_sharp),
                      prefixIconColor: Color.fromARGB(255, 112, 112, 112),
                      // labelText: 'Email',
                      hintText: 'Email',
                      hintStyle:
                          TextStyle(color: Color.fromARGB(255, 112, 112, 112))),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 50,
                width: 320,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 81, 58, 9),
                    borderRadius: BorderRadius.circular(45)),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Send Email',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
