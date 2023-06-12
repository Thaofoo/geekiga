import 'dart:io';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:geekiga/validator.dart';
import '../providers/authService.dart';
import 'package:provider/provider.dart';
import 'package:geekiga/navbar.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;

class SignUpCompletion extends StatefulWidget {
  @override
  State<SignUpCompletion> createState() => _SignUpCompletionState();
}

class _SignUpCompletionState extends State<SignUpCompletion> {
  final TextEditingController dispNameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController profileController = TextEditingController();
  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  final auth.FirebaseAuth _firebaseAuth = auth.FirebaseAuth.instance;

  String errorMessage = '';
  String imageUrl = '';

  @override
  Widget build(BuildContext context) {
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
                  padding: EdgeInsets.only(top: 80, bottom: 30),
                  child: Center(
                    child: Text(
                      "Complete Your Sign Up",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w800,
                          fontSize: 25),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 15, bottom: 30),
                  child: Stack(
                    children: [
                      SizedBox(
                        width: 120,
                        height: 120,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image(
                            image: NetworkImage(_firebaseAuth
                                    .currentUser!.photoURL ??
                                'https://th.bing.com/th/id/OIP.DGePcjJ-RdJr7oivIaPxGgHaHa?w=217&h=217&c=7&r=0&o=5&dpr=1.3&pid=1.7'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: const Color.fromRGBO(69, 69, 69, 1),
                          ),
                          child: IconButton(
                            onPressed: () async {
                              // /Step 1:Pick image/
                              //Install image_picker
                              //Import the corresponding library

                              ImagePicker imagePicker = ImagePicker();
                              XFile? file = await imagePicker.pickImage(
                                  source: ImageSource.gallery);
                              print('${file?.path}');

                              if (file == null) return;
                              //Import dart:core
                              String uniqueFileName = DateTime.now()
                                  .millisecondsSinceEpoch
                                  .toString();

                              // /Step 2: Upload to Firebase storage/
                              //Install firebase_storage
                              //Import the library

                              //Get a reference to storage root
                              Reference referenceRoot =
                                  FirebaseStorage.instance.ref();
                              Reference referenceDirImages =
                                  referenceRoot.child('images');

                              //Create a reference for the image to be stored
                              Reference referenceImageToUpload =
                                  referenceDirImages.child(uniqueFileName);

                              //Handle errors/success
                              try {
                                //Store the file
                                await referenceImageToUpload
                                    .putFile(File(file.path));
                                //Success: get the download URL
                                imageUrl = await referenceImageToUpload
                                    .getDownloadURL();
                                await FirebaseAuth.instance.currentUser!
                                    .updatePhotoURL(imageUrl);
                              } catch (error) {
                                //Some error occurred
                              }
                              setState(() {});
                            },
                            icon: const Icon(Icons.camera_alt),
                          ),
                        ),
                      )
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: TextFormField(
                    controller: dispNameController,
                    validator: validateForm,
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        fillColor: const Color(0xff2C2C2C).withOpacity(0.51),
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(45.0),
                            borderSide: BorderSide.none),
                        prefixIcon: const Icon(Icons.perm_identity),
                        prefixIconColor: const Color(0xff707070),
                        // labelText: 'Email',
                        hintText: 'Name',
                        hintStyle: const TextStyle(
                            color: Color.fromARGB(255, 112, 112, 112))),
                  ),
                ),
                // Padding(
                //   //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
                //   padding: EdgeInsets.only(
                //       left: 15.0, right: 15.0, top: 15, bottom: 0),
                //   child: TextFormField(
                //     controller: profileController,
                //     validator: validateForm,
                //     style: TextStyle(color: Colors.white),
                //     decoration: InputDecoration(
                //         fillColor: Color(0xff2C2C2C).withOpacity(0.51),
                //         filled: true,
                //         border: OutlineInputBorder(
                //             borderRadius: BorderRadius.circular(45.0),
                //             borderSide: BorderSide.none),
                //         prefixIcon:
                //             Icon(Icons.photo_size_select_actual_rounded),
                //         prefixIconColor: Color(0xff707070),
                //         // labelText: 'Email',
                //         hintText: 'Profile Url',
                //         hintStyle: TextStyle(
                //             color: Color.fromARGB(255, 112, 112, 112))),
                //   ),
                // ),

                // Padding(
                //   padding: EdgeInsets.only(
                //       left: 15.0, right: 15.0, top: 15, bottom: 0),
                //   child: Column(
                //     children: [
                //       CircleAvatar(
                //         foregroundImage: NetworkImage(_firebaseAuth
                //                 .currentUser!.photoURL ??
                //             'https://th.bing.com/th/id/OIP.DGePcjJ-RdJr7oivIaPxGgHaHa?w=217&h=217&c=7&r=0&o=5&dpr=1.3&pid=1.7'),
                //         backgroundColor: Colors.white,
                //         radius: 60,
                //       ),
                //       IconButton(
                //         onPressed: () async {
                //           /*Step 1:Pick image*/
                //           //Install image_picker
                //           //Import the corresponding library

                //           ImagePicker imagePicker = ImagePicker();
                //           XFile? file = await imagePicker.pickImage(
                //               source: ImageSource.gallery);
                //           print('${file?.path}');

                //           if (file == null) return;
                //           //Import dart:core
                //           String uniqueFileName =
                //               DateTime.now().millisecondsSinceEpoch.toString();

                //           /*Step 2: Upload to Firebase storage*/
                //           //Install firebase_storage
                //           //Import the library

                //           //Get a reference to storage root
                //           Reference referenceRoot =
                //               FirebaseStorage.instance.ref();
                //           Reference referenceDirImages =
                //               referenceRoot.child('images');

                //           //Create a reference for the image to be stored
                //           Reference referenceImageToUpload =
                //               referenceDirImages.child(uniqueFileName);

                //           //Handle errors/success
                //           try {
                //             //Store the file
                //             await referenceImageToUpload
                //                 .putFile(File(file.path));
                //             //Success: get the download URL
                //             imageUrl =
                //                 await referenceImageToUpload.getDownloadURL();
                //             await FirebaseAuth.instance.currentUser!
                //                 .updatePhotoURL(imageUrl);
                //           } catch (error) {
                //             //Some error occurred
                //           }
                //           setState(() {});
                //         },
                //         icon: Icon(Icons.camera_alt),
                //       ),
                //       Padding(
                //         padding: EdgeInsets.only(top: 1.0),
                //         child: Text(
                //           "Add Profile Picture",
                //           style: TextStyle(
                //               color: Colors.white,
                //               fontSize: 15,
                //               fontWeight: FontWeight.w500),
                //         ),
                //       ),
                //     ],
                //   ),
                // ),

                const SizedBox(
                  height: 50,
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
                          await FirebaseAuth.instance.currentUser!
                              .updateDisplayName(dispNameController.text);
                          //  await FirebaseAuth.instance.currentUser!
                          //   .updatePhoneNumber(int.parse(phoneController.text));

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
                                          color:
                                              Color.fromARGB(255, 184, 137, 33),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
