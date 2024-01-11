import 'dart:async';
import 'package:flutter/material.dart';

class FutureBuilderSample extends StatelessWidget {
  // Simulating a future that completes after 5 seconds
  // only return result when the operation completes
  Future<int> calculateSquare(int num) async {
    await Future.delayed(const Duration(seconds: 5));
    return num * num;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('FutureBuilder Example'),
        ),
        body: FutureBuilder<int>(
          future: calculateSquare(10),
          builder: (context, snapshot) {
            return Center(
              child: snapshot.connectionState == ConnectionState.waiting
                  ? CircularProgressIndicator()
                  : snapshot.hasError
                  ? Text('Error: ${snapshot.error}')
                  : Text(
                'Data: ${snapshot.data}',
                style: const TextStyle(fontSize: 24),
              ),
            );
          },
        ),
      ),
    );
  }
}
