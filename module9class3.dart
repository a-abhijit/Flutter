import 'package:flutter/material.dart';

class Module9class3 extends StatelessWidget {
  const Module9class3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, '/class2');
            }, child: Text("Class1")),
            ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, '/class3');
            }, child: Text("Class2")),
            ElevatedButton(onPressed: (){}, child: Text("Class3")),
          ],
        ),
      )

    );
  }
}
