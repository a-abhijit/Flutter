import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: AllSample()));
}

class AllSample extends StatelessWidget {
  const AllSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Container, Padding, Margin")),
      body: ListView(
        children: [
          Card(
            color: Colors.red.withOpacity(0.3),
            elevation: 4,
            child: ListTile(
              leading: Icon(Icons.nature_people_sharp),
              title: Text("Abhijit"),
              subtitle: Text("Developer"),
              trailing: Icon(Icons.arrow_circle_right_outlined),
            ),
          )
        ],
      )
    );
  }
}