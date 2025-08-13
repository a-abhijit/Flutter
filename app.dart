import 'package:demoapp/widget/Calculator%20app/calculatorApp.dart';
import 'package:demoapp/widget/module%2011/counter_app.dart';
import 'package:demoapp/widget/ownwidget.dart';
import 'package:flutter/material.dart';
import 'module8class1.dart';
import 'module8class2.dart';
import 'flutterclass3.dart';
import 'module8class3.dart';
import 'module9class3.dart';
import 'stack.dart';
import 'listview.dart';
import 'module9class1.dart';
import 'assignment2.dart';
import 'module9class2.dart';
import 'livetest2.dart';
import 'pratice.dart';
import 'widget/ownwidget.dart';
class MyApp extends StatelessWidget{
  MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light
      ),
      title: "batch 11",
      initialRoute: '/counterApp',
      routes: {
        // '/class2': (context)=> Module8Class1(),
        // '/class3': (context)=> Module8class3(),
        '/counterApp':(context)=>Calculatorapp()

      },
    );
  }

  }