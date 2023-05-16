import 'package:flutter/material.dart';
import 'package:geekiga/pages/login.dart';
import 'package:geekiga/newNavbar.dart';
import 'package:http/http.dart';
import 'package:provider/provider.dart';
import '../providers/userProvider.dart';
import '../providers/auth.dart';

var _passwordVisible = false;

class SignUp extends StatelessWidget {
  const SignUp({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SignUpPage(),
    );
  }
}

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController fNameController = TextEditingController();
  final TextEditingController lNameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  Duration get loginTime => Duration(milliseconds: 2000);

  Future<String?> _authUserSignUp(
      String email, String firstName, String lastName, String password) {
    return Future.delayed(loginTime).then((_) async {
      try {
        await Provider.of<Auth>(context, listen: false)
            .signup(email, firstName, lastName, password);
      } catch (err) {
        print(err);
        return err.toString();
      }
      return null;
    });
  }

  @override
  Widget build(BuildContext context) {
    // final users = Provider.of<Users>(context, listen: false);
    final auth = Provider.of<Auth>(context, listen: false);
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
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Center(
            child: Container(
                width: 100,
                height: 20,
                child: Image.asset('assets/images/small-logo.png')),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 40),
                child: Center(
                  child: Text(
                    "Create Your Account",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                        fontSize: 25),
                  ),
                ),
              ),
              Padding(
                //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextFormField(
                  controller: emailController,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      fillColor: Color(0xff2C2C2C).withOpacity(0.51),
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(45.0),
                          borderSide: BorderSide.none),
                      prefixIcon: Icon(Icons.mail_outline_rounded),
                      prefixIconColor: Color(0xff707070),
                      // labelText: 'Email',
                      hintText: 'Email',
                      hintStyle:
                          TextStyle(color: Color.fromARGB(255, 112, 112, 112))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 15.0, bottom: 0),
                // padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextFormField(
                  controller: fNameController,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      fillColor: Color(0xff2C2C2C).withOpacity(0.51),
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(45.0),
                          borderSide: BorderSide.none),
                      prefixIcon: Icon(Icons.person_outline_sharp),
                      prefixIconColor: Color(0xff707070),
                      // labelText: 'Email',
                      hintText: 'First Name',
                      hintStyle:
                          TextStyle(color: Color.fromARGB(255, 112, 112, 112))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 15.0, bottom: 0),
                // padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextFormField(
                  controller: lNameController,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      fillColor: Color(0xff2C2C2C).withOpacity(0.51),
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(45.0),
                          borderSide: BorderSide.none),
                      prefixIcon: Icon(Icons.person_outline_sharp),
                      prefixIconColor: Color(0xff707070),
                      // labelText: 'Email',
                      hintText: 'Last Name',
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
                  controller: passwordController,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      fillColor: Color(0xff2C2C2C).withOpacity(0.51),
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(45.0),
                          borderSide: BorderSide.none),
                      prefixIcon: Icon(Icons.lock_outline_rounded),
                      prefixIconColor: Color.fromARGB(255, 112, 112, 112),
                      suffixIcon: IconButton(
                        // style: IconButton.styleFrom(),
                        icon: Icon(
                          _passwordVisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: Color(0xff707070),
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
                      prefixIcon: Icon(Icons.lock_outline_rounded),
                      prefixIconColor: Color.fromARGB(255, 112, 112, 112),
                      suffixIcon: IconButton(
                        // style: IconButton.styleFrom(),
                        icon: Icon(
                          _passwordVisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: Color(0xff707070),
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
                      hintStyle:
                          TextStyle(color: Color.fromARGB(255, 112, 112, 112))),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 50,
                width: 320,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 81, 58, 9),
                    borderRadius: BorderRadius.circular(45)),
                child: TextButton(
                  onPressed: () {
                    _authUserSignUp(emailController.text, fNameController.text,
                            lNameController.text, passwordController.text)
                        .then((response) {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (_) => Navbar2()));
                    });
                    // Navigator.pushReplacement(
                    //     context, MaterialPageRoute(builder: (_) => Navbar2()));
                  },
                  child: Text(
                    'Continue',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
              ),
              SizedBox(
                height: 60,
              ),
              Container(
                  width: 300,
                  // padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        "Already have an account?",
                        style: TextStyle(color: Colors.white, fontSize: 14),
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
                              MaterialPageRoute(builder: (_) => Login()));
                        },
                        child: Text(
                          'Sign In',
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
