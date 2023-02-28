import 'package:flutter/material.dart';
import 'package:geekiga/navbar.dart';
import 'package:geekiga/Pages/login.dart';

var _passwordVisible = false;

class SignUp extends StatelessWidget {
  const SignUp({super.key});  
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
              stops: [0.1, 0.7, 0.4],
              colors: [Color.fromARGB(255, 83, 60, 15), Colors.black, Colors.black])),
      child: Scaffold(
      
      backgroundColor: Colors.transparent,
      // appBar: AppBar(
      //   title: Text("Login Page"),
      // ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: 60,),
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
                  "Create Your Account", 
                  style: TextStyle(
                    color: Colors.white, 
                    fontWeight: FontWeight.w800, 
                    fontSize: 25),),
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
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(45.0),  borderSide: BorderSide.none),
                  prefixIcon: Icon(Icons.person_outline_sharp),
                  prefixIconColor: Color.fromARGB(255, 112, 112, 112),
                  // labelText: 'Email',
                  hintText: 'Email',
                  hintStyle: TextStyle(color: Color.fromARGB(255, 112, 112, 112))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 0),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextFormField(
                obscureText: !_passwordVisible,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  fillColor: Color.fromARGB(255, 44, 44, 44),
                  filled: true,
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(45.0),  borderSide: BorderSide.none),
                  prefixIcon: Icon(Icons.lock_outline_rounded),
                  prefixIconColor: Color.fromARGB(255, 112, 112, 112),
                  suffixIcon: IconButton(
                    // style: IconButton.styleFrom(),
                    icon: Icon(
                      _passwordVisible
                      ? Icons.visibility
                      : Icons.visibility_off,
                      color: Theme.of(context).primaryColorDark,
                      ),
                    splashColor: Color.fromARGB(0, 0, 0, 0),
                    onPressed: () {
                      setState(() {
                          _passwordVisible = !_passwordVisible;
                      });
                    },
                    ),
                  suffixIconColor: Color.fromARGB(255, 112, 112, 112),
                  // labelText: 'Email',
                  hintText: 'Password',
                  hintStyle: TextStyle(color: Color.fromARGB(255, 112, 112, 112))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 0),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextFormField(
                obscureText: !_passwordVisible,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  fillColor: Color.fromARGB(255, 44, 44, 44),
                  filled: true,
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(45.0),  borderSide: BorderSide.none),
                  prefixIcon: Icon(Icons.lock_outline_rounded),
                  prefixIconColor: Color.fromARGB(255, 112, 112, 112),
                  suffixIcon: IconButton(
                    // style: IconButton.styleFrom(),
                    icon: Icon(
                      _passwordVisible
                      ? Icons.visibility
                      : Icons.visibility_off,
                      color: Theme.of(context).primaryColorDark,
                      ),
                    splashColor: Color.fromARGB(0, 0, 0, 0),
                    onPressed: () {
                      setState(() {
                          _passwordVisible = !_passwordVisible;
                      });
                    },
                    ),
                  suffixIconColor: Color.fromARGB(255, 112, 112, 112),
                  // labelText: 'Email',
                  hintText: 'Confirm Password',
                  hintStyle: TextStyle(color: Color.fromARGB(255, 112, 112, 112))),
              ),
            ),
            SizedBox(height: 30,),
            
            Container(
              height: 50,
              width: 320,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 81, 58, 9), borderRadius: BorderRadius.circular(45)),
              child: TextButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context, MaterialPageRoute(builder: (_) => Navbar()));
                },
                child: Text(
                  'Continue',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ),
            ),
            SizedBox(
              height: 130,
            ),  
            Container(
                width: 300,
                // padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                  Text("Already have an account?", style: TextStyle(color: Colors.white, fontSize: 14),),
                  SizedBox(width: 10,),
                  TextButton(
                    // style: ButtonStyle(
                    // shape: MaterialStatePropertyAll<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30), side: BorderSide(color: Colors.black)))  
                    // ),
                    onPressed: (){
                      Navigator.pushReplacement(
                        context, MaterialPageRoute(builder: (_) => Login())
                      );
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(color: Color.fromARGB(255, 184, 137, 33), fontSize: 15),
                    ),
                  ),
                ],
                )
              ),
          ],
        ),
      ),
    ),
    );
  }
}