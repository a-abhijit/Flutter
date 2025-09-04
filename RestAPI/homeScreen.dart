import 'dart:convert';

import 'package:demoapp/RestAPI/Models/product_model.dart';
import 'package:demoapp/RestAPI/URLS/urls.dart';
import 'package:demoapp/RestAPI/add_new_product.dart';
import 'package:demoapp/RestAPI/update_product.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  final List<ProductModel> _productList = [];
  bool getProductProgressLoader = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getProduct();
  }

  Future<void> getProduct() async {
    _productList.clear();
    getProductProgressLoader=true;
    setState(() {

    });

    // 1. Define the URL
    final url = Uri.parse('http://35.73.30.144:2008/api/v1/ReadProduct');
    // 2. Send GET request
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final decodedJSON = jsonDecode(response.body);
      for (Map<String, dynamic> productJson in decodedJSON['data']) {
        ProductModel productModel = ProductModel.fromJson(productJson);
        _productList.add(productModel);


      }
      getProductProgressLoader=false;
      setState(() {});
    } else {
      print("❌ Failed to fetch posts. Code: ${response.statusCode}");
    }
  }

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

        actions: [IconButton(onPressed:(){
          getProduct();
        }, icon: Icon(Icons.refresh))],
      ),
      body: Visibility(
        visible: getProductProgressLoader=false,
        replacement: CircularProgressIndicator(),

        child: ListView.separated(
          itemCount: _productList.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                radius: 20,
                child: Image.network(_productList[index].image,
                errorBuilder:(_,__,___){
                  return Icon(Icons.add);
              }
                ),
              ),
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
                onSelected: (PopmenuOptions selected) {
                  if (selected == PopmenuOptions.update) {
                    PopmenuOptions.update;
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => UpdateProduct()),
                    );
                  } else if (selected == PopmenuOptions.delete) {
                    print("delete");
                  }
                },
              ),
              title: Text(_productList[index].name),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Code : ${_productList[index].code}"),
                  Row(
                    children: [
                      Text("Quantity : ${_productList[index].quantity}"),
                      SizedBox(width: 10),
                      Text("Unit price : ${_productList[index].unitprice}"),
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
