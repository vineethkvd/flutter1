import 'dart:async';
import 'package:flutter/material.dart';

class StreamBuilderSample extends StatelessWidget {
  // Defining the stream
  static Stream<int> countStream() async* {
    for (int count = 0; count < 50; count++) {
      await Future.delayed(const Duration(seconds: 1));
      yield count;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('StreamBuilder Example'),
        ),
        body: StreamBuilder<int>(
          stream: countStream(),
          initialData: 0,
          builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else if (snapshot.hasError) {
              return Center(
                child: Text('Error: ${snapshot.error}'),
              );
            } else {
              return Center(
                child: Text(
                  'Count: ${snapshot.data}',
                  style: const TextStyle(fontSize: 24),
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
