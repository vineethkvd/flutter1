import 'package:flutter/material.dart';
import 'package:flutter1/form/formsample.dart';
import 'package:flutter1/phone_features/openwebpage.dart';
import 'package:flutter1/screens/Checkbox/checkboxsample.dart';
import 'package:flutter1/screens/Container/container_widget.dart';
import 'package:flutter1/screens/Icons/iconssample.dart';
import 'package:flutter1/screens/PopupMenuButton/popupmenu.dart';
import 'package:flutter1/screens/QuizApp/quizapppage1.dart';
import 'package:flutter1/screens/QuizApp/quizapppage2.dart';
import 'package:flutter1/screens/QuizApp/quizapppage3.dart';
import 'package:flutter1/screens/QuizApp/quizapppage4.dart';
import 'package:flutter1/screens/QuizApp/quizapppage5.dart';
import 'package:flutter1/screens/alertbox/alertboxsample.dart';
import 'package:flutter1/screens/alertbox/alertboxsample1.dart';
import 'package:flutter1/screens/button/buttonsample.dart';
import 'package:flutter1/screens/calculatorapp/calculatorapp.dart';
import 'package:flutter1/screens/centerwidget.dart';
import 'package:flutter1/screens/column/coloumnsampl1.dart';
import 'package:flutter1/screens/column/columnsample.dart';
import 'package:flutter1/screens/containerwidget.dart';
import 'package:flutter1/screens/containerwidget1.dart';
import 'package:flutter1/screens/drawer/drawersample.dart';
import 'package:flutter1/screens/form/form.dart';
import 'package:flutter1/screens/gestures/gesturessample.dart';
import 'package:flutter1/screens/image/imagesample.dart';
import 'package:flutter1/screens/listview/listviewsample.dart';
import 'package:flutter1/screens/listview/listviewsample1.dart';
import 'package:flutter1/screens/listview/whatsapp_chat.dart';
import 'package:flutter1/screens/radiobutton/radiobuttonsample.dart';
import 'package:flutter1/screens/radiobutton/radiobuttonsample2.dart';
import 'package:flutter1/screens/row/rowsample.dart';
import 'package:flutter1/screens/second_screen.dart';
import 'package:flutter1/screens/stack/stackexample.dart';
import 'package:flutter1/screens/text/textsample.dart';
import 'package:flutter1/screens/textfield//textareasample.dart';
import 'package:flutter1/splash.dart';

import 'form/SnackBar/snakbarsample.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Splash());
  }
}
