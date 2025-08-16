import 'package:flutter/material.dart';

class level_widget extends StatelessWidget {
  final String liter;
  IconData? icon;
  final VoidCallback onclick;

   level_widget({
    super.key, required this.liter, required this.onclick,this.icon
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onclick,
      icon: Icon(icon ?? Icons.water_drop,size: 28,),
      label: Text(liter + ' liter',style: TextStyle(fontSize: 18),),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.cyanAccent.shade100,
      ),
    );
  }
}
