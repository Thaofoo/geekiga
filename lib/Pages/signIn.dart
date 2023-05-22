import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:geekiga/pages/signUp.dart';
import 'package:geekiga/pages/forget.dart';
import 'package:geekiga/providers/authService.dart';
import 'package:provider/provider.dart';
import '../navbar.dart';
import 'package:geekiga/validator.dart';

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
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  String passwd = '';
  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  String errorMessage = '';

  @override
  Widget build(BuildContext context) {
    // final auth = Provider.of<Auth>(context, listen: false);
    final authService = Provider.of<AuthService>(context);
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
        body: Form(
          key: _key,
          child: SingleChildScrollView(
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
                        child: Image.asset('assets/images/geekigaLogo.png')),
                  ),
                ),
                Padding(
                  //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: TextFormField(
                    controller: emailController,
                    validator: validateEmail,
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
                        hintStyle: TextStyle(
                            color: Color.fromARGB(255, 112, 112, 112))),
                  ),
                ),
                // Padding(
                //   padding: EdgeInsets.all(2),
                //   child: Text(errorMessage),
                // ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 15, bottom: 0),
                  //padding: EdgeInsets.symmetric(horizontal: 15),
                  child: TextFormField(
                    controller: passwordController,
                    validator: validatePassword,
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
                              color: Color(0xff707070),
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
                        hintStyle: TextStyle(
                            color: Color.fromARGB(255, 112, 112, 112))),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => Forget()));
                  },
                  child: Text(
                    'Forgot Your Password?',
                    style: TextStyle(
                      color: Color.fromARGB(255, 184, 137, 33),
                      fontSize: 15,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                Container(
                  height: 45,
                  width: 320,
                  margin: EdgeInsets.only(top: 15),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 81, 58, 9),
                      borderRadius: BorderRadius.circular(45)),
                  child: TextButton(
                    onPressed: () async {
                      if (_key.currentState!.validate()) {
                        try {
                          await authService.signInWithEmailAndPassword(
                            emailController.text,
                            passwordController.text,
                          );
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (_) => Navbar()),
                          );
                        } on FirebaseAuthException catch (error) {
                          errorMessage = error.message!;
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(15.0))),
                                backgroundColor:
                                    Color.fromARGB(255, 34, 34, 34),
                                title: const Text(
                                  "Error",
                                  style: TextStyle(color: Colors.white),
                                ),
                                content: Text(
                                  errorMessage,
                                  style: TextStyle(color: Colors.white),
                                ),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Text(
                                      "Continue",
                                      style: TextStyle(
                                          color: warnaEmas,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              );
                            },
                          );
                        }
                      }
                    },
                    child: Text(
                      'Sign In',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                SizedBox(
                  height: 80,
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
      ),
    );
  }
}
