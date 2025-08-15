import 'package:flutter/material.dart';

class level_widget extends StatelessWidget {
  final String liter;

  const level_widget({
    super.key, required this.liter,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {},
      icon: Icon(Icons.water_drop,size: 28,),
      label: Text(liter + ' liter',style: TextStyle(fontSize: 18),),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.cyanAccent.shade100,
      ),
    );
  }
}
