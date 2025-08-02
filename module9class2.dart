import 'package:flutter/material.dart';

class Module9class2 extends StatelessWidget {
  const Module9class2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.deepOrangeAccent,
      title: Center(child: Text("Module9class2")),),
      drawer: Drawer(
        child: 
        ListView(
          children: [
            DrawerHeader(child: Column(
              children: [
                CircleAvatar(
                  radius : 30,
                  backgroundImage: NetworkImage('https://globalcybersecuritynetwork.com/wp-content/uploads/2023/03/face-recognition.jpg'),
                ),
                Text("Abhijit Saha",style: TextStyle(fontWeight: FontWeight.bold),),
                Text("abhijit0045@gmail.com",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 12),),
              ],
            )),
            ListTile(
              title: Text("Home"),
              onTap: (){Navigator.pop(context);},
            ),
            Divider(thickness: 1,
            color: Colors.blue,)
          ],
        ),
        
      ),
    );
  }
}
