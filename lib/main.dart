import 'package:flutter/material.dart';
import 'package:flutter1/speech_to_text/speech_to_text.dart';
import 'package:flutter1/table/table_sample.dart';
import 'package:flutter1/table/table_sample2.dart';
import 'package:flutter1/text_to_speech/text_to_speech.dart';

import 'charts/chart_sample.dart';
import 'flash_light/flash_light_sample2.dart';
import 'flash_light/flashlightsample.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FlashLightSample2(),
    );
  }
}
