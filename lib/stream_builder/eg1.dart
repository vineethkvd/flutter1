import 'package:flutter/material.dart';
class StreamBuilderSample extends StatefulWidget {
  // Defining the stream
  static Stream<int> countStream() {
    return Stream.periodic(
      const Duration(seconds: 1),
          (count) => count,
    ).take(10);
  }

  @override
  State<StreamBuilderSample> createState() => _StreamBuilderSampleState();
}

class _StreamBuilderSampleState extends State<StreamBuilderSample> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('StreamBuilder Example'),
        ),
        body: StreamBuilder<int>(
          stream: StreamBuilderSample.countStream(),
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