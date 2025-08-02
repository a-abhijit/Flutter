import 'package:flutter/material.dart';
class Module8class3 extends StatelessWidget {
  const Module8class3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Grid View"),

      ),
          body: GridView.count(
            crossAxisCount: 3,
            crossAxisSpacing: 10, //space between left to right grid
            mainAxisSpacing: 10, //space between upper to lower grid
            children: List.generate(10, (index){
              return Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
                ),

                color: Colors.pink,
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.phone_android,color: Colors.white,),
                    SizedBox(height: 5,),
                    Text('Cash out',style: TextStyle(color: Colors.white),)
                  ],
                ),
              );

            })




            //   Container(
            //   color: Colors.red,
            //   height: 200,
            //   width: 200,
            //
            // ),
            //   Container(
            //     color: Colors.green,
            //     height: 200,
            //     width: 200,
            //
            //   ),
            //   Container(
            //     color: Colors.orange,
            //     height: 200,
            //     width: 200,
            //
            //   ),
            //   Container(
            //     color: Colors.blue,
            //     height: 200,
            //     width: 200,
            //
            //   ),
            //   Container(
            //     color: Colors.blue,
            //     height: 200,
            //     width: 200,
            //
            //   ),
            //   Container(
            //     color: Colors.blue,
            //     height: 200,
            //     width: 200,
            //
            //   ),
          ),
    );
  }
}
