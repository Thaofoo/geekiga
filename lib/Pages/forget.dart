import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:geekiga/pages/signIn.dart';
import 'package:geekiga/validator.dart';
import 'landing.dart';

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
  final TextEditingController resetController = TextEditingController();
  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  String errorMessage = '';

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
        backgroundColor: const Color.fromARGB(42, 0, 0, 0),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: const IconThemeData(color: Colors.white),
          // title: Text("Forget Page"),
        ),
        body: Form(
          key: _key,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: Center(
                    child: Container(
                        width: 100,
                        height: 30,
                        child: Image.asset('assets/images/small-logo.png')),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(40),
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
                const Padding(
                  padding: EdgeInsets.fromLTRB(27, 5, 27, 30),
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
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: TextFormField(
                    controller: resetController,
                    validator: validateEmail,
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        fillColor: const Color(0xff2C2C2C).withOpacity(0.51),
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(45.0),
                            borderSide: BorderSide.none),
                        prefixIcon: const Icon(Icons.person_outline_sharp),
                        prefixIconColor:
                            const Color.fromARGB(255, 112, 112, 112),
                        // labelText: 'Email',
                        hintText: 'Email',
                        hintStyle: const TextStyle(
                            color: Color.fromARGB(255, 112, 112, 112))),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 50,
                  width: 320,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 81, 58, 9),
                      borderRadius: BorderRadius.circular(45)),
                  child: TextButton(
                    onPressed: () async {
                      var resetPass = resetController.text.trim();

                      if (_key.currentState!.validate()) {
                        try {
                          await FirebaseAuth.instance
                              .sendPasswordResetEmail(email: resetPass)
                              .then((value) => {
                                    print("Email Sent"),
                                    showDialog(
                                      context: context,
                                      builder: (context) {
                                        return AlertDialog(
                                          shape: const RoundedRectangleBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(15.0))),
                                          backgroundColor: const Color.fromARGB(
                                              255, 34, 34, 34),
                                          title: const Text(
                                            "Email Sent",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          content: const Text(
                                            "Please check your email inbox",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          actions: [
                                            TextButton(
                                              onPressed: () {
                                                Navigator.of(context).popUntil(
                                                    (route) => route.isFirst);
                                                Navigator.pushReplacement(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (BuildContext
                                                                context) =>
                                                            const LandingPage()));
                                              },
                                              child: const Text(
                                                "Continue",
                                                style: TextStyle(
                                                    color: warnaEmas,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                          ],
                                        );
                                      },
                                    ),
                                  });
                        } on FirebaseAuthException catch (error) {
                          print("Error $error");
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
                        ;
                      }
                    },
                    child: const Text(
                      'Send Email',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
