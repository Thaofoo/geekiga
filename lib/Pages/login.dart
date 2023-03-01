import 'package:flutter/material.dart';
import 'package:geekiga/navbar.dart';
import 'package:geekiga/Pages/signup.dart';
import 'package:geekiga/Pages/forget.dart';

var _passwordVisible = false;
const Color warnaEmas = Color.fromARGB(255, 184, 137, 33);

class Login extends StatelessWidget {
  const Login({super.key});  
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
                Color.fromARGB(255, 98, 48, 8),
                Color.fromARGB(255, 32, 19, 8),
                Color.fromARGB(255, 21, 19, 17),
                Color.fromARGB(255, 0, 0, 0),
              ],
            )),
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
              padding: const EdgeInsets.only(top: 60.0),
              child: Center(
                child: Container(
                    width: 200,
                    height: 150,
                    child: Image.asset('images/geekigaLogo.png')),
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
            TextButton(
              // style: ButtonStyle(
              // shape: MaterialStatePropertyAll<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30), side: BorderSide(color: Colors.black)))  
              // ),
              onPressed: (){
                Navigator.push(
                        context, MaterialPageRoute(builder: (_) => Forget())
                      );
              },
              child: Text(
                'Forget Your Password?',
                style: TextStyle(color: Color.fromARGB(255, 184, 137, 33), fontSize: 14),
              ),
            ),
            
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
                  'Login',
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
                  Text("Don't have an account?", style: TextStyle(color: Colors.white, fontSize: 14),),
                  SizedBox(width: 10,),
                  TextButton(
                    // style: ButtonStyle(
                    // shape: MaterialStatePropertyAll<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30), side: BorderSide(color: Colors.black)))  
                    // ),
                    onPressed: (){
                      Navigator.pushReplacement(
                        context, MaterialPageRoute(builder: (_) => SignUp())
                      );
                    },
                    child: Text(
                      'Sign Up',
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