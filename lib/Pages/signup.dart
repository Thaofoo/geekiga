import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:geekiga/pages/signIn.dart';
import 'package:geekiga/pages/signUpComp.dart';
import 'package:geekiga/validator.dart';
import 'package:provider/provider.dart';
import '../providers/authService.dart';

var _passwordVisible = false;
const Color warnaEmas = Color.fromARGB(255, 184, 137, 33);

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
  final TextEditingController passwordConfController = TextEditingController();

  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  String errorMessage = '';

  @override
  Widget build(BuildContext context) {
    // final users = Provider.of<Users>(context, listen: false);
    // final auth = Provider.of<Auth>(context, listen: false);
    final authService = Provider.of<AuthService>(context);
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
        body: Form(
          key: _key,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.only(top: 80, bottom: 40),
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
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: TextFormField(
                    controller: emailController,
                    validator: validateEmail,
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        fillColor: const Color(0xff2C2C2C).withOpacity(0.51),
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(45.0),
                            borderSide: BorderSide.none),
                        prefixIcon: const Icon(Icons.mail_outline_rounded),
                        prefixIconColor: const Color(0xff707070),
                        // labelText: 'Email',
                        hintText: 'Email',
                        hintStyle: const TextStyle(
                            color: Color.fromARGB(255, 112, 112, 112))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 15, bottom: 0),
                  //padding: EdgeInsets.symmetric(horizontal: 15),
                  child: TextFormField(
                    obscureText: !_passwordVisible,
                    controller: passwordController,
                    validator: validatePassword,
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        fillColor: const Color(0xff2C2C2C).withOpacity(0.51),
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(45.0),
                            borderSide: BorderSide.none),
                        prefixIcon: const Icon(Icons.lock_outline_rounded),
                        prefixIconColor:
                            const Color.fromARGB(255, 112, 112, 112),
                        suffixIcon: IconButton(
                          // style: IconButton.styleFrom(),
                          icon: Icon(
                            _passwordVisible
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: const Color(0xff707070),
                          ),
                          splashColor: const Color.fromARGB(0, 0, 0, 0),
                          onPressed: () {
                            setState(() {
                              _passwordVisible = !_passwordVisible;
                            });
                          },
                        ),
                        suffixIconColor:
                            const Color.fromARGB(255, 112, 112, 112),
                        // labelText: 'Email',
                        hintText: 'Password',
                        hintStyle: const TextStyle(
                            color: Color.fromARGB(255, 112, 112, 112))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 15, bottom: 0),
                  //padding: EdgeInsets.symmetric(horizontal: 15),
                  child: TextFormField(
                    controller: passwordConfController,
                    validator: validatePasswordConf,
                    obscureText: !_passwordVisible,
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        fillColor: const Color(0xff2C2C2C).withOpacity(0.51),
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(45.0),
                            borderSide: BorderSide.none),
                        prefixIcon: const Icon(Icons.lock_outline_rounded),
                        prefixIconColor:
                            const Color.fromARGB(255, 112, 112, 112),
                        suffixIcon: IconButton(
                          // style: IconButton.styleFrom(),
                          icon: Icon(
                            _passwordVisible
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: const Color(0xff707070),
                          ),
                          splashColor: const Color.fromARGB(0, 0, 0, 0),
                          onPressed: () {
                            setState(() {
                              _passwordVisible = !_passwordVisible;
                            });
                          },
                        ),
                        suffixIconColor:
                            const Color.fromARGB(255, 112, 112, 112),
                        // labelText: 'Email',
                        hintText: 'Confirm Password',
                        hintStyle: const TextStyle(
                            color: Color.fromARGB(255, 112, 112, 112))),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  height: 50,
                  width: 320,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 81, 58, 9),
                      borderRadius: BorderRadius.circular(45)),
                  child: TextButton(
                    onPressed: () async {
                      if (_key.currentState!.validate()) {
                        try {
                          await authService.createUserWithEmailAndPassword(
                            emailController.text,
                            passwordController.text,
                          );

                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (_) => SignUpCompletion()),
                          );
                        } on FirebaseAuthException catch (error) {
                          errorMessage = error.message!;
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(15.0))),
                                backgroundColor:
                                    const Color.fromARGB(255, 34, 34, 34),
                                title: const Text(
                                  "Error",
                                  style: TextStyle(color: Colors.white),
                                ),
                                content: Text(
                                  errorMessage,
                                  style: const TextStyle(color: Colors.white),
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
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 60,
                ),
                Container(
                  width: 300,
                  // padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const Text(
                        "Already have an account?",
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      TextButton(
                        // style: ButtonStyle(
                        // shape: MaterialStatePropertyAll<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30), side: BorderSide(color: Colors.black)))
                        // ),
                        onPressed: () {
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (_) => const Login()));
                        },
                        child: const Text(
                          'Sign In',
                          style: TextStyle(
                              color: Color.fromARGB(255, 184, 137, 33),
                              fontSize: 15),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 60,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
