import 'package:flutter/material.dart';
class FuturebuilderSample extends StatefulWidget {
  @override
  State<FuturebuilderSample> createState() => _FuturebuilderSampleState();
}

class _FuturebuilderSampleState extends State<FuturebuilderSample> {
  // Simulating a future that completes after 5 seconds
  Future<int> fetchData() async {
    await Future.delayed(Duration(seconds: 5));
    return 42;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('FutureBuilder Example'),
        ),
        body: FutureBuilder<int>(
          future: fetchData(),
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
                  'Data: ${snapshot.data}',
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