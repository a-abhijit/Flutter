import 'package:demoapp/module8class3.dart';
import 'package:flutter/material.dart';
import 'module8class3.dart';
class Assignment2 extends StatelessWidget {
  const Assignment2({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Greeting App"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Hello, World!",style: TextStyle(fontSize: 25,color: Colors.red,fontWeight: FontWeight.w700),),
            SizedBox(height: 15,),
            Text("Welcome to Flutter!",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.w500),),
            Image.network('https://logosandtypes.com/wp-content/uploads/2021/04/Flutter.png',height: 400,width: 300,),
            ElevatedButton(onPressed: (){
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("Button Pressed!"))
                );

            }, child: Text("Press me",style: TextStyle(color: Colors.black),),style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green
            ))
          ],
        ),
      )
    );
  }
}

//https://logosandtypes.com/wp-content/uploads/2021/04/Flutter.png
