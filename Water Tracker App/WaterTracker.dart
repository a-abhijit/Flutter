import 'package:flutter/material.dart';

import 'level_widget.dart';

class WaterTracker extends StatefulWidget {
  const WaterTracker({super.key});

  @override
  State<WaterTracker> createState() => _WaterTrackerState();
}

class _WaterTrackerState extends State<WaterTracker> {

  int currentIntake=0;
  final int goal =5000;
  double progressval=0;
  late double percentage=0;

  void waterCalc(int amount){
    setState(() {
      if(currentIntake<=5000){
        currentIntake=(currentIntake+amount).clamp(0, 5000);
      }
      progressval = (currentIntake/goal);
      percentage=progressval*100.truncate();


    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Water Tracker",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
          ),
        ),
        backgroundColor: Colors.blue.shade100,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 30),
            Container(
              padding: EdgeInsets.all(50),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [BoxShadow(offset: Offset(2, 2), blurRadius: 4)],
              ),

              child: Column(
                children: [
                  Text(
                    "Water Level",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "${currentIntake} Litters",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w800,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 300,
                  width: 300,
                  child: CircularProgressIndicator(
                    backgroundColor: Colors.grey.shade200,
                    strokeWidth: 20,
                    color: Colors.blue,
                    padding: EdgeInsets.all(30),
                    value: progressval,
                  ),
                ),
                Text(
                  "${percentage}%",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Wrap(
              children: [
                level_widget(liter: '100', onclick: ()=>waterCalc(100),),
                level_widget(liter: '500', onclick: ()=>waterCalc(500),),
                level_widget(liter: '800', onclick: ()=>waterCalc(800),)

              ],
            ),
          ],
        ),
      ),
    );
  }
}

