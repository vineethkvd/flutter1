// import 'package:flutter/material.dart';
// import 'package:flutter1/sharedpreference/sharedsignin.dart';
// class Home extends StatelessWidget {
//   const Home({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Home'),
//       ),
//       body: Center(
//           child: ElevatedButton(
//               onPressed: () {
//                 Helper.saveUserLoggedInSharedPreference(false);
//                 Navigator.pushReplacement(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => Signin(),
//                   ),
//                 );
//               },
//               child: Text('Sign out'))),
//     );
//   }
// }