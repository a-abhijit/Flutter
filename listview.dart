import 'package:flutter/material.dart';

class ListV extends StatelessWidget {
  final name;
  const ListV({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("learn List View"),
        backgroundColor: Colors.blue,

        
      ),
      body: ListView.builder(
        itemCount: 50,
        itemBuilder: (context,index){
            return Card(
              child: ListTile(
                leading: Icon(Icons.phone),
                trailing: Icon(Icons.delete),
                title: Text("Abhi"),
                subtitle: Text(name),
              ),
            );
      }

      ),
    );
  }
}
