// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// import '../providers/userProvider.dart';

// class AddUser extends StatelessWidget {
//   static const routeName = "/add-User";
//   final TextEditingController nameController = TextEditingController();
//   final TextEditingController positionController = TextEditingController();
//   final TextEditingController imageController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     final Users = Provider.of<User>(context, listen: false);
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("ADD User"),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: Form(
//           child: Column(
//             children: [
//               TextFormField(
//                 autocorrect: false,
//                 autofocus: true,
//                 decoration: InputDecoration(labelText: "Nama"),
//                 textInputAction: TextInputAction.next,
//                 controller: nameController,
//               ),
//               TextFormField(
//                 autocorrect: false,
//                 decoration: InputDecoration(labelText: "Posisi"),
//                 textInputAction: TextInputAction.next,
//                 controller: positionController,
//               ),
//               TextFormField(
//                 autocorrect: false,
//                 decoration: InputDecoration(labelText: "Image URL"),
//                 textInputAction: TextInputAction.done,
//                 controller: imageController,
//                 onEditingComplete: () {
//                   Users
//                       .addUser(
//                     nameController.text,
//                     positionController.text,
//                     imageController.text,
//                   )
//                       .then(
//                     (response) {
//                       print("Kembali ke Home & kasih notif snack bar");
//                       ScaffoldMessenger.of(context).showSnackBar(
//                         SnackBar(
//                           content: Text("Berhasil ditambahkan"),
//                           duration: Duration(seconds: 2),
//                         ),
//                       );
//                       Navigator.pop(context);
//                     },
//                   );
//                 },
//               ),
//               SizedBox(height: 50),
//               Container(
//                 width: double.infinity,
//                 alignment: Alignment.centerRight,
//                 child: OutlinedButton(
//                   onPressed: () {
//                     Users
//                         .addUser(
//                       nameController.text,
//                       positionController.text,
//                       imageController.text,
//                     )
//                         .then(
//                       (response) {
//                         print("Kembali ke Home & kasih notif snack bar");
//                         ScaffoldMessenger.of(context).showSnackBar(
//                           SnackBar(
//                             content: Text("Berhasil ditambahkan"),
//                             duration: Duration(seconds: 2),
//                           ),
//                         );
//                         Navigator.pop(context);
//                       },
//                     );
//                   },
//                   child: Text(
//                     "Submit",
//                     style: TextStyle(
//                       fontSize: 18,
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
