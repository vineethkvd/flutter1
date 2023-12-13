import 'package:flutter/material.dart';
import 'package:flutter1/padding_margin/eg1.dart';
import 'package:flutter1/screens/Forms/eg1.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home:PaddingMarginSample(),);
  }
}


// import 'package:flutter/material.dart';
// import 'package:flutter1/bloc/counter_screen.dart';
// import 'package:flutter1/bloc/logic/bloc/counter_bloc.dart';
// import 'package:flutter1/model_class/example_1/view/product_screen.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_native_splash/flutter_native_splash.dart';
//
// void main() {
//   WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
//   FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (context) => CounterBloc(),
//       child: MaterialApp(
//         home:ProductHomePage(),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:flutter1/animation/Physics_Animation/physiscs_1.dart';
// import 'package:flutter1/sharedpreference_login/login_page.dart';
// import 'package:flutter1/toast_notifications/toastsample.dart';
// import 'package:flutter1/video/videosample.dart';
// import 'package:flutter1/webview/webviewsample.dart';
//
// import 'bloc/counter_screen.dart';
// import 'google_map/googlemapsample.dart';
// void main(){
//   runApp(const MyApp());
// }
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: CounterScreen(),
//     );
//   }
// }
//
// // import 'package:flutter/material.dart';
// // import 'package:flutter1/calender/calendersample.dart';
// // import 'package:flutter1/sharedpreference/example2/logineg2.dart';
// // import 'package:flutter1/sqlflite/view/sqlflitehome.dart';
// //
// // import 'calender/example2/calendersample2.dart';
// //
// // void main() {
// //   runApp(const MyApp());
// // }
// //
// // class MyApp extends StatefulWidget {
// //   const MyApp({super.key});
// //
// //   @override
// //   State<MyApp> createState() => _MyAppState();
// // }
// //
// // class _MyAppState extends State<MyApp> {
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       title: "Calender App",
// //       theme: ThemeData(
// //         brightness: Brightness.light,
// //         primaryColor: Colors.orange,
// //         fontFamily: 'Georgia',
// // //text styling
// //         textTheme: TextTheme(
// //           headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
// //           headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
// //           bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
// //         ),
// //       ),
// //       home: CalenderSample2(),
// //     );
// //   }
// // }
//
// // import 'package:flutter/material.dart';
// // import 'package:flutter1/speech_to_text/speech_to_text.dart';
// // import 'package:flutter1/table/table_sample.dart';
// // import 'package:flutter1/table/table_sample2.dart';
// // import 'package:flutter1/text_to_speech/text_to_speech.dart';
// //
// // import 'charts/chart_sample.dart';
// // import 'db_helper.dart';
// // import 'flash_light/flash_light_sample2.dart';
// // import 'flash_light/flashlightsample.dart';
// // void main(){
// //   runApp(MyApp());
// // }
// // class MyApp extends StatelessWidget {
// //   const MyApp({super.key});
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       home: HomePage(),
// //     );
// //   }
// // }
// // class HomePage extends StatefulWidget {
// //   const HomePage({Key? key}) : super(key: key);
// //
// //   @override
// //   State<HomePage> createState() => _HomePageState();
// // }
// //
// // class _HomePageState extends State<HomePage> {
// //   // All journals
// //   List<Map<String, dynamic>> _journals = [];
// //
// //   bool _isLoading = true;
// //   // This function is used to fetch all data from the database
// //   void _refreshJournals() async {
// //     final data = await SQLHelper.getItems();
// //     setState(() {
// //       _journals = data;
// //       _isLoading = false;
// //     });
// //   }
// //
// //   @override
// //   void initState() {
// //     super.initState();
// //     _refreshJournals(); // Loading the diary when the app starts
// //   }
// //
// //   final TextEditingController _titleController = TextEditingController();
// //   final TextEditingController _descriptionController = TextEditingController();
// //
// //   // This function will be triggered when the floating button is pressed
// //   // It will also be triggered when you want to update an item
// //   void _showForm(int? id) async {
// //     if (id != null) {
// //       // id == null -> create new item
// //       // id != null -> update an existing item
// //       final existingJournal =
// //       _journals.firstWhere((element) => element['id'] == id);
// //       _titleController.text = existingJournal['title'];
// //       _descriptionController.text = existingJournal['description'];
// //     }
// //
// //     showModalBottomSheet(
// //         context: context,
// //         elevation: 5,
// //         isScrollControlled: true,
// //         builder: (_) => Container(
// //           padding: EdgeInsets.only(
// //             top: 15,
// //             left: 15,
// //             right: 15,
// //             // this will prevent the soft keyboard from covering the text fields
// //             bottom: MediaQuery.of(context).viewInsets.bottom + 120,
// //           ),
// //           child: Column(
// //             mainAxisSize: MainAxisSize.min,
// //             crossAxisAlignment: CrossAxisAlignment.end,
// //             children: [
// //               TextField(
// //                 controller: _titleController,
// //                 decoration: const InputDecoration(hintText: 'Title'),
// //               ),
// //               const SizedBox(
// //                 height: 10,
// //               ),
// //               TextField(
// //                 controller: _descriptionController,
// //                 decoration: const InputDecoration(hintText: 'Description'),
// //               ),
// //               const SizedBox(
// //                 height: 20,
// //               ),
// //               ElevatedButton(
// //                 onPressed: () async {
// //                   // Save new journal
// //                   if (id == null) {
// //                     await _addItem();
// //                   }
// //
// //                   if (id != null) {
// //                     await _updateItem(id);
// //                   }
// //
// //                   // Clear the text fields
// //                   _titleController.text = '';
// //                   _descriptionController.text = '';
// //
// //                   // Close the bottom sheet
// //                   if (!mounted) return;
// //                   Navigator.of(context).pop();
// //                 },
// //                 child: Text(id == null ? 'Create New' : 'Update'),
// //               )
// //             ],
// //           ),
// //         ));
// //   }
// //
// // // Insert a new journal to the database
// //   Future<void> _addItem() async {
// //     await SQLHelper.createItem(
// //         _titleController.text, _descriptionController.text);
// //     _refreshJournals();
// //   }
// //
// //   // Update an existing journal
// //   Future<void> _updateItem(int id) async {
// //     await SQLHelper.updateItem(
// //         id, _titleController.text, _descriptionController.text);
// //     _refreshJournals();
// //   }
// //
// //   // Delete an item
// //   void _deleteItem(int id) async {
// //     await SQLHelper.deleteItem(id);
// //     ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
// //       content: Text('Successfully deleted a journal!'),
// //     ));
// //     _refreshJournals();
// //   }
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: const Text('Kindacode.com'),
// //       ),
// //       body: _isLoading
// //           ? const Center(
// //         child: CircularProgressIndicator(),
// //       )
// //           : ListView.builder(
// //         itemCount: _journals.length,
// //         itemBuilder: (context, index) => Card(
// //           color: Colors.orange[200],
// //           margin: const EdgeInsets.all(15),
// //           child: ListTile(
// //               title: Text(_journals[index]['title']),
// //               subtitle: Text(_journals[index]['description']),
// //               trailing: SizedBox(
// //                 width: 100,
// //                 child: Row(
// //                   children: [
// //                     IconButton(
// //                       icon: const Icon(Icons.edit),
// //                       onPressed: () => _showForm(_journals[index]['id']),
// //                     ),
// //                     IconButton(
// //                       icon: const Icon(Icons.delete),
// //                       onPressed: () =>
// //                           _deleteItem(_journals[index]['id']),
// //                     ),
// //                   ],
// //                 ),
// //               )),
// //         ),
// //       ),
// //       floatingActionButton: FloatingActionButton(
// //         child: const Icon(Icons.add),
// //         onPressed: () => _showForm(null),
// //       ),
// //     );
// //   }
// // }
