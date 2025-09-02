import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class AddNewProduct extends StatefulWidget {
  const AddNewProduct({super.key});

  @override
  State<AddNewProduct> createState() => _AddNewProductState();
}

class _AddNewProductState extends State<AddNewProduct> {
  bool _addInProgress = false;
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  final TextEditingController nameController =TextEditingController();
  final TextEditingController codeController =TextEditingController();
  final TextEditingController quantityController =TextEditingController();
  final TextEditingController unitController =TextEditingController();
  final TextEditingController imgController =TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Add Data")),
      body: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                TextFormField(
                  controller: nameController,
                  decoration: InputDecoration(
                    label: Text("Product Name"),
                    hintText: "Product Name",
                  ),
                  validator: (value) {
                    if (value == null || value.trim().isEmpty){
                      return "Please enter a product name";
                    }return null;
                  },
                ),


                SizedBox(height: 10,),
                TextFormField(
                  keyboardType: TextInputType.text,
                  controller: codeController,
                  decoration: InputDecoration(
                    label: Text("Product Code"),
                    hintText: "Product Code",
                  ),
                  validator: (value) {
                    if (value == null || value.trim().isEmpty){
                      return "Please enter a product name";
                    }return null;
                  },
                ),
                SizedBox(height: 10,),
                TextFormField(
                  keyboardType: TextInputType.number,
                  controller: quantityController,
                  decoration: InputDecoration(
                    label: Text("Quantity"),
                    hintText: "Quantity",
                  ),
                  validator: (value) {
                    if (value == null || value.trim().isEmpty){
                      return "Please enter a quantity";
                    }return null;
                  },
                ),
                SizedBox(height: 10,),
                TextFormField(
                  keyboardType: TextInputType.number,
                  controller: unitController,
                  decoration: InputDecoration(
                    label: Text("Unit Price"),
                    hintText: "Unit Price",
                  ),
                  validator: (value) {
                    if (value == null || value.trim().isEmpty){
                      return "Please enter unit price";
                    }return null;
                  },
                ),
                SizedBox(height: 10,),
                TextFormField(
                  controller: imgController,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    label: Text("Img URL"),
                    hintText: "Img URL",
                  ),
                  validator: (value) {
                    if (value == null || value.trim().isEmpty){
                      return "Please enter a img name";
                    }return null;
                  },
                ),
                SizedBox(height: 30,),
                Visibility(
                  visible: _addInProgress ==false,
                  replacement: Center(child: CircularProgressIndicator()),
                  child: FilledButton(onPressed: (){
                    _onTapAddProductButton();

                    }, child: Text("Add product")),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
  void _onTapAddProductButton()async{
    if (_formkey.currentState?.validate() == false){
      return;
    }
    _addInProgress = true;
    setState(() {});
  //   prepare uri
    Uri uri = Uri.parse('http://35.73.30.144:2008/api/v1/CreateProduct');
    //prepare data
    Map<String,dynamic> requestBody= {
      "ProductName": nameController.text,
      "ProductCode": codeController.text,
      "Img": imgController.text,
      "Qty": quantityController.text,
      "UnitPrice": unitController.text,
      "TotalPrice": int.parse(quantityController.text)*int.parse(unitController.text)
    };
    //request with data

    Response response = await post(uri,
        headers: {
      'Content-Type':'application/json'
        },
        body: jsonEncode(requestBody));
    print(response.statusCode);
    print(response.body);

    if(response.statusCode == 200){
      final decodeJson= jsonDecode(response.body);
      if (decodeJson["status"]=="success"){
        clearField();
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Data added successfully")));

      }else{
        clearField();
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(decodeJson["data"])));

      }
    }
    _addInProgress = false;
    setState(() {});
    
  }

  void clearField(){
    nameController.clear();
    codeController.clear();
    quantityController.clear();
    unitController.clear();
    imgController.clear();
  }


  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    nameController.dispose();
    codeController.dispose();
    quantityController.dispose();
    unitController.dispose();
    imgController.dispose();
  }
}

