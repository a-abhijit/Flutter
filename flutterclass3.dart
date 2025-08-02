import 'package:flutter/material.dart';

class Flutterclass3 extends StatelessWidget {
  const Flutterclass3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],

      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text("FlutterClass3",style: TextStyle(fontSize: 20,),),
        centerTitle: true,


      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,

              ),
              onPressed: () {
                print("button pressed");
              },
              child: Text("Elevated", style: TextStyle(color: Colors.white),)),

            SizedBox(
              height: 20,
            ),

            OutlinedButton(onPressed: () {}, child: Text("Outline")),

            SizedBox(height: 20),
            Icon(Icons.delete, size: 50, color: Colors.red,),

            TextButton(onPressed: () {}, child: Text("text button")),

            IconButton(onPressed: (){print("calling");}, icon:Icon(Icons.phone,size: 50,color: Colors.blue,)),

            SizedBox(height: 20),
            
            GestureDetector(
              onTap: (){
                print("tapped");
                },
                child: Text("data",style: TextStyle(color: Colors.red,fontSize: 20))),
            
            
            
            

          ],

        ),
      ),
    );
  }
}
