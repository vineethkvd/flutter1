import 'package:flutter/material.dart';
import 'package:flutter1/text_to_speech/text_to_speech.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TextToSpeech(),
    );
  }
}
