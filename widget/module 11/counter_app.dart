
import 'package:flutter/material.dart';
class CounterApp extends StatefulWidget {
  CounterApp ({super.key}){
    print("1 constructor");
  }

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int number=5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Counter",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),)),




        backgroundColor: Colors.black54,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(number.toString(),style: TextStyle(fontSize: 60),
            ),

            SizedBox(height: 50,),


            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

              SizedBox(
                  height: 60,width: 80,
                  child: ElevatedButton(onPressed: (){
                    setState(() {
                      number-=1;
                    });




                  }, child: Text("-",style: TextStyle(fontSize: 50,color: Colors.black54),),
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.red)

                  ),),
              SizedBox(
                  height: 60,width: 80,
                  child: ElevatedButton(onPressed: (){
                    setState(() {
                      number+=1;
                    });

                  }, child: Text("+",style: TextStyle(fontSize: 50,color: Colors.black54),),
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.green)
                  )
              ),
            ],)
          ],
        ),
      )





    );
  }
}
