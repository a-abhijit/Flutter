import 'package:demoapp/RestAPI/add_new_product.dart';
import 'package:demoapp/RestAPI/update_product.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Product List",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
        ),
      ),
      body: ListView.separated(
        itemCount: 15,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(),
            trailing: PopupMenuButton<PopmenuOptions>(
              itemBuilder: (context) {
                return [
                  PopupMenuItem(
                    value: PopmenuOptions.update,
                    child: Text("Update"),
                  ),

                  PopupMenuItem(
                    value: PopmenuOptions.delete,
                    child: Text("Delete"),
                  ),
                ];
              },
              onSelected: (PopmenuOptions selected){
                if (selected == PopmenuOptions.update){
                  PopmenuOptions.update;
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>UpdateProduct()));
                }else if(selected == PopmenuOptions.delete){
                  print("delete");
                }
              },
            ),
            title: Text("Product name"),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Code : 123456"),
                Row(
                  children: [
                    Text("Quantity : 50"),
                    SizedBox(width: 10),
                    Text("Unit price : 900"),
                  ],
                ),
              ],
            ),
          );
        },

        separatorBuilder: (context, index) {
          return Divider(indent: 70);
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddNewProduct()),
          );
        },
      ),
    );
  }
}

enum PopmenuOptions { delete, update }
