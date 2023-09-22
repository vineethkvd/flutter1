import 'package:flutter/material.dart';

class WhatsAppSplashScreen extends StatefulWidget {
  const WhatsAppSplashScreen({super.key});

  @override
  State<WhatsAppSplashScreen> createState() => _WhatsAppSplashScreenState();
}

class _WhatsAppSplashScreenState extends State<WhatsAppSplashScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Stack(
      children: [
        Align(
            alignment: AlignmentDirectional.center,
            child: Image(
                width: 100,
                image: AssetImage('assets/images/whatsapp_logo.png'))),
        Positioned(right: 180, top: 780, child: Text("From")),
        Positioned(
            right: 160,
            top: 800,
            child: Row(children: [
              Image(
                  width: 20, image: AssetImage('assets/images/meta_logo.png')),
              Text(
                " Meta",
                style: TextStyle(color: Colors.green, fontSize: 25),
              )
            ])),
      ],
    ));
  }
}
