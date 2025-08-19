import 'package:flutter/material.dart';
class cardWidget extends StatelessWidget {
  final String name;
  final double amount;
  final Color color;
  const cardWidget({
    super.key, required this.name, required this.amount, required this.color
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          color: color,
          child: Padding(

            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "${amount}TK",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
