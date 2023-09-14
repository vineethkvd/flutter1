import 'package:flutter/material.dart';

class ContainerWidget1 extends StatelessWidget {
  const ContainerWidget1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          // height: 200,
          // width: 200,
          // color: Colors.amber,
          //Alignment(x, y),
          // alignment: const Alignment(0, 0),
          // alignment: Alignment.bottomRight,
          // Alignment(1.0, -1.0),
          // alignment: FractionalOffset(0,0),
          // alignment: AlignmentDirectional(-1,1),
          // alignment: AlignmentDirectional(0,0),
          // alignment: FractionalOffset.topLeft,
          alignment: AlignmentDirectional.center,
          // margin: EdgeInsets.all(50),
          //  padding: EdgeInsets.all(20),
          // margin: EdgeInsets.symmetric(horizontal: 70, vertical: 30),
          //margin: EdgeInsets.fromLTRB(20, 30, 40, 50),
          //EdgeInsets.fromLTRB(this.left, this.top, this.right, this.bottom)
          // margin: EdgeInsets.only(left: 70, bottom: 50),
          //padding: EdgeInsets.only(left: 70, bottom: 50),
          decoration: BoxDecoration(
              color: Colors.green,
              border: Border.all(),
              shape: BoxShape.circle,
              image: const DecorationImage(
                  image: NetworkImage("https://docs.flutter.dev/assets/images"
                      "/dash/dash-fainting.gif"))),
          child: const FlutterLogo(size: 100),
          constraints: const BoxConstraints(
              maxHeight: 100, maxWidth: 100, minHeight: 100, minWidth: 100),
        ),
      ),
    );
  }
}
