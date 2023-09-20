import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter1/phone_features/openwebpage.dart';
class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const OpenWebPAge(),
        ),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network('https://www.pngfind.com/pngs/m/377-3778465_png-file-svg-deal-icon-transparent-png.png',width: 100,),

            Padding(
              padding: const EdgeInsets.all(30.0),
              child: LinearProgressIndicator(
                backgroundColor: Colors.black,
                color: Colors.red,

              ),
            )
          ],
        ),
      ),
    );
  }
}
