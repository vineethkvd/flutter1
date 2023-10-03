import 'dart:convert';
import 'package:flutter1/apigetx/model/model.dart';
import 'package:http/http.dart' as http;

class DataServices {
  final String url = 'https://jsonplaceholder.typicode.com/todos/1';

  Future<DataModel> getService() async {
    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        return DataModel.fromJson(data);
      } else {
        throw Exception('Failed to load data');
      }
    } catch (e) {
      throw Exception('Error: $e');
    }
  }
}