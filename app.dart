import 'package:demoapp/widget/Calculator%20app/calculatorApp.dart';
import 'package:demoapp/widget/module%2011/counter_app.dart';
import 'package:demoapp/widget/ownwidget.dart';
import 'package:flutter/material.dart';
import 'Money Management App/money_management.dart';
import 'Todo App/todoApp.dart';
import 'Water Tracker App/WaterTracker.dart';
import 'all_sample.dart';
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
        primarySwatch: Colors.blue,
        brightness: Brightness.light,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.blue,
        )
      ),


      title: "batch 11",
      initialRoute: '/AllSample',
      routes: {
        // '/class2': (context)=> Module8Class1(),
        // '/class3': (context)=> Module8class3(),
        '/AllSample':(context)=>Todoapp(),

      },
    );
  }

  }