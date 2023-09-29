import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class FetchApi extends StatefulWidget {
  const FetchApi({Key? key}) : super(key: key);

  @override
  State<FetchApi> createState() => _FetchApiState();
}

class _FetchApiState extends State<FetchApi> {
  List<dynamic> newsSources = [];

  @override
  void initState() {
    super.initState();
    _fetchNewsSources();
  }

  Future<void> _fetchNewsSources() async {
    final String apiKey = '6842c385dc5e467eac91d810f147b54a';
    final Uri url = Uri.parse(
        'https://newsapi.org/v2/top-headlines/sources?category=business&apiKey=$apiKey');

    try {
      final response = await http.get(url);

      if (response.statusCode == 200) {
        final parsedData = json.decode(response.body);
        setState(() {
          newsSources =
              parsedData['sources']; // Use 'sources' key to access data
        });
      } else {
        throw Exception('Failed to load news sources');
      }
    } catch (e) {
      throw Exception('Error: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('News Sources'),
      ),
      body: _buildNewsSourceList(),
    );
  }

  Widget _buildNewsSourceList() {
    if (newsSources.isEmpty) {
      return Center(
        child: CircularProgressIndicator(),
      );
    } else {
      return ListView.builder(
        itemCount: newsSources.length,
        itemBuilder: (context, index) {
          final source = newsSources[index];
          return ListTile(
            title: Text(source['name'] ?? 'Name not available'),
            subtitle:
                Text(source['description'] ?? 'Description not available'),
            trailing: Text(source['category'] ?? 'Category not available'),
          );
        },
      );
    }
  }
}

//
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';
//
// class TodoList extends StatefulWidget {
//   @override
//   _TodoListState createState() => _TodoListState();
// }
//
// class _TodoListState extends State<TodoList> {
//   List<dynamic> _todos = [];
//
//   @override
//   void initState() {
//     super.initState();
//     _fetchTodoData();
//   }
//
//   Future<void> _fetchTodoData() async {
//     final Uri url = Uri.parse('https://jsonplaceholder.typicode.com/todos');
//     final response = await http.get(url);
//
//     if (response.statusCode == 200) {
//       setState(() {
//         _todos = json.decode(response.body);
//       });
//     } else {
//       throw Exception('Failed to load todos');
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Todo List'),
//       ),
//       body: ListView.builder(
//         itemCount: _todos.length,
//         itemBuilder: (context, index) {
//           return ListTile(
//             title: Text(_todos[index]['title']),
//             leading: Text(_todos[index]['id'].toString()),
//             subtitle: Text(_todos[index]['completed'].toString()),
//           );
//         },
//       ),
//     );
//   }
// }
