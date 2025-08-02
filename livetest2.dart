import 'package:flutter/material.dart';

class Livetest2 extends StatelessWidget {
  const Livetest2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Employee",style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold
        ),),
      ),
      body:
      Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: "Name",

                )
            ),
            TextField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  hintText: "Age",

                )
            ),
            TextField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  hintText: "Salary",

                )
            ),
            SizedBox(height: 19,),
            ElevatedButton(onPressed: (){}, child: Text("Add Employee"))
          ],
        ),
      )

    );
  }
}
