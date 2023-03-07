import 'package:flutter/material.dart';
import 'package:geekiga/navbar.dart';
import 'package:geekiga/Pages/signup.dart';
import 'package:geekiga/Pages/forget.dart';
import 'package:geekiga/newNavbar.dart';
import '../package/my_flutter_app_icons.dart';

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
          preferredSize: Size.fromHeight(0),
          child: AppBar(
            backgroundColor: Colors.black,
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 60,
              ),
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
                      fillColor: Color(0xff2C2C2C).withOpacity(0.51),
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(45.0),
                          borderSide: BorderSide.none),
                      prefixIcon: Container(
                        margin: EdgeInsets.only(left: 25, right: 15),
                        child: Icon(Icons.person_outline_sharp),
                      ),
                      prefixIconColor: Color(0xff707070),
                      // labelText: 'Email',
                      hintText: 'Email',
                      hintStyle:
                          TextStyle(color: Color.fromARGB(255, 112, 112, 112))),
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
                      fillColor: Color(0xff2C2C2C).withOpacity(0.51),
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(45.0),
                          borderSide: BorderSide.none),
                      prefixIcon: Container(
                        margin: EdgeInsets.only(left: 25, right: 15),
                        child: Icon(Icons.lock_outline_rounded),
                      ),
                      prefixIconColor: Color(0xff707070),
                      suffixIcon: Container(
                        margin: EdgeInsets.only(right: 20),
                        child: IconButton(
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
                      ),
                      suffixIconColor: Color.fromARGB(255, 112, 112, 112),
                      // labelText: 'Email',
                      hintText: 'Password',
                      hintStyle:
                          TextStyle(color: Color.fromARGB(255, 112, 112, 112))),
                ),
              ),
              TextButton(
                // style: ButtonStyle(
                // shape: MaterialStatePropertyAll<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30), side: BorderSide(color: Colors.black)))
                // ),
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => Forget()));
                },
                child: Text(
                  'Forgot Your Password?',
                  style: TextStyle(
                    color: Color.fromARGB(255, 184, 137, 33),
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              Container(
                height: 45,
                width: 350,
                margin: EdgeInsets.only(top: 15),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 81, 58, 9),
                    borderRadius: BorderRadius.circular(45)),
                child: TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context, MaterialPageRoute(builder: (_) => Navbar2()));
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w400),
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
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        "Don't have an account?",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w300),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      TextButton(
                        // style: ButtonStyle(
                        // shape: MaterialStatePropertyAll<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30), side: BorderSide(color: Colors.black)))
                        // ),
                        onPressed: () {
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (_) => SignUp()));
                        },
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                              color: Color.fromARGB(255, 184, 137, 33),
                              fontSize: 15),
                        ),
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
