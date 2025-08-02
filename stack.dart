import 'package:flutter/material.dart';
class StackLearn extends StatelessWidget {
  const StackLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Stack",style: TextStyle(fontSize: 30),),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Stack(
            children: [

              Container(color: Colors.black,height: 200,width: 200,),
              Positioned(
                bottom: 30,
                  left: 0,
                  right: 50,
                  child:
                  Container(color: Colors.green,height: 200,width: 200,)
              ),
              Positioned(
                  bottom: 50,
                  left: 20,
                  right: 20,
                  child: Container(color: Colors.lime,height: 200,width: 200,))

            ],
          ),

          SizedBox(height: 20,),

          Stack(
            children: [
              CircleAvatar(
                radius: 40,
                backgroundImage: NetworkImage('https://images.unsplash.com/photo-1543610892-0b1f7e6d8ac1?q=80&w=687&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D')
                ),
              Positioned(
                right: 8,
                bottom: 3,

                child: Container(
                  width: 20,
                  height: 20,
                  decoration:
                  BoxDecoration(
                    color: Colors.green,
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white,width: 2)
                  ),

                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
