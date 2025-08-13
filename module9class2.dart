import 'package:demoapp/module8class1.dart';
import 'package:demoapp/module8class2.dart';
import 'package:demoapp/module8class3.dart';
import 'package:flutter/material.dart';


class Module9class2 extends StatelessWidget {
  const Module9class2({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Center(child: Text("Module9class2")),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home)),
              Tab(icon: Icon(Icons.contact_mail)),
              Tab(icon: Icon(Icons.settings)),
            ],
          ),
        ),
        drawer: Drawer(
          child: ListView(
            children: const [
              DrawerHeader(
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                        'https://globalcybersecuritynetwork.com/wp-content/uploads/2023/03/face-recognition.jpg',
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "Abhijit Saha",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "abhijit0045@gmail.com",
                      style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
                    ),
                  ],
                ),
              ),
              ListTile(
                title: Text("Home"),
              ),
              Divider(thickness: 1, color: Colors.blue),
            ],
          ),
        ),
        body: TabBarView(
          children: [

            Container(
              height: 200,
              color: Colors.orange,
              child: Center(child: Text("Home",style: TextStyle(fontSize: 30),))
            ),
            Container(
              height: 200,
              color: Colors.blue,
              child: Center(child: Text("Contacts",style: TextStyle(fontSize: 30),))
            ),
            Container(
              height: 200,
              color: Colors.green,
              child: Center(child: Text("Settings",style: TextStyle(fontSize: 30),)),
            )
          ],
        ),
      ),
    );
  }
}
