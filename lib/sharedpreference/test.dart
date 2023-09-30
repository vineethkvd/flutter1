// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'package:flutter1/sharedpreference/login.dart';
// import 'package:flutter1/sharedpreference/home.dart';
// import 'package:shared_preferences/shared_preferences.dart';
//
//
//
// Future<void> main() async{
//   WidgetsFlutterBinding.ensureInitialized();
//   SharedPreferences prefs =await SharedPreferences.getInstance();
//   var email=prefs.getString("email");
//   print(email);
//   runApp(MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: email==null?Login():Home(),));
// }
//
// class Login extends StatelessWidget {
//   const Login({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Login"),),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () async {
//             SharedPreferences pref =await SharedPreferences.getInstance();
//             pref.setString("email", "useremail@gmail.com");
//             Navigator.pushReplacement(context, MaterialPageRoute(builder: (_){
//               return Home();
//             }));
//           },
//           child: const Text("Login",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
//         ),
//       ),
//     );
//   }
// }
//
//
//
// class Home extends StatefulWidget {
//   const Home({Key? key}) : super(key: key);
//
//   @override
//   State<Home> createState() => _HomeState();
// }
//
// class _HomeState extends State<Home> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Home"),),
//       body: Column(
//         children: [
//           // Text(getData()),
//           Center(
//             child: ElevatedButton(
//               onPressed: () async {
//                 SharedPreferences pref = await SharedPreferences.getInstance();
//                 pref.remove("email");
//                 Navigator.pushReplacement(context, MaterialPageRoute(builder: (_){
//                   return Login();
//                 }));
//               },
//               child: Text("Logout",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }