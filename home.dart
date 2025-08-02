import 'package:flutter/material.dart';
class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        leading: IconButton(icon:Icon(Icons.menu),onPressed: (){}),
        title: Text('Home'),
        actions: [
          IconButton(icon:Icon(Icons.search),onPressed: (){}),
          IconButton(icon:Icon(Icons.add_shopping_cart),onPressed: (){}),
        ],
        elevation: 0,
        titleSpacing: -5,
        centerTitle: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))
        ),
        toolbarHeight: 40,

      ),
      body:SingleChildScrollView(scrollDirection:Axis.vertical,child:Column( mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("row",style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 40
          ),),
          Text("row",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 40
          ),),
          Text("row",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 40
          ),),
          Text("row",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 40
          ),),
          Text("row",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 40
          ),),
          Text("row",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 40
          ),),
          Text("row",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 40
          ),),
          Text("row",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 40
          ),),
          Text("row",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 40
          ),),
          Text("row",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 40
          ),),
          Text("row",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 40
          ),),
          Text("row",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 40
          ),),
          Text("row",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 40
          ),),
          Text("row",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 40
          ),),
          Text("row",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 40
          ),),
          Text("row",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 40
          ),),
          Text("row",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 40
          ),),
          Text("row",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 40
          ),),
          Text("row",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 40
          ),),
          Text("row",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 40
          ),),
          Text("row",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 40
          ),),
          Text("row",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 40
          ),),
          Text("row",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 40
          ),),
          Text("row",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 40
          ),)


        ],
      ),
    ));
  }
}