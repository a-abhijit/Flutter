import 'package:flutter/material.dart';

class AddNewProduct extends StatefulWidget {
  const AddNewProduct({super.key});

  @override
  State<AddNewProduct> createState() => _AddNewProductState();
}

class _AddNewProductState extends State<AddNewProduct> {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Add Data")),
      body: Form(
        key: _formkey,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  label: Text("Product Name"),
                  hintText: "Product Name",
                ),
              ),

              SizedBox(height: 10,),
              TextFormField(
                decoration: InputDecoration(
                  label: Text("Product Code"),
                  hintText: "Product Code",
                ),
              ),
              SizedBox(height: 10,),
              TextFormField(
                decoration: InputDecoration(
                  label: Text("Quantity"),
                  hintText: "Quantity",
                ),
              ),
              SizedBox(height: 10,),
              TextFormField(
                decoration: InputDecoration(
                  label: Text("Unit Price"),
                  hintText: "Unit Price",
                ),
              ),
              SizedBox(height: 10,),
              TextFormField(
                decoration: InputDecoration(
                  label: Text("Img URL"),
                  hintText: "Img URL",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
