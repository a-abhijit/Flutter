import 'package:flutter/material.dart';

class UpdateProduct extends StatefulWidget {
  const UpdateProduct({super.key});

  @override
  State<UpdateProduct> createState() => _UpdateProductState();
}

class _UpdateProductState extends State<UpdateProduct> {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  final TextEditingController nameController =TextEditingController();
  final TextEditingController codeController =TextEditingController();
  final TextEditingController quantityController =TextEditingController();
  final TextEditingController unitController =TextEditingController();
  final TextEditingController imgController =TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Update")),
      body: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                TextFormField(
                  keyboardType: TextInputType.text,
                  controller: nameController,
                  decoration: InputDecoration(
                    label: Text("Product Name"),
                    hintText: "Product Name",
                  ),
                ),

                SizedBox(height: 10,),
                TextFormField(
                  keyboardType: TextInputType.text,
                  controller: codeController,
                  decoration: InputDecoration(
                    label: Text("Product Code"),
                    hintText: "Product Code",
                  ),
                ),
                SizedBox(height: 10,),
                TextFormField(
                  keyboardType: TextInputType.number,
                  controller: quantityController,
                  decoration: InputDecoration(
                    label: Text("Quantity"),
                    hintText: "Quantity",
                  ),
                ),
                SizedBox(height: 10,),
                TextFormField(
                  keyboardType: TextInputType.number,
                  controller: unitController,
                  decoration: InputDecoration(
                    label: Text("Unit Price"),
                    hintText: "Unit Price",
                  ),
                ),
                SizedBox(height: 10,),
                TextFormField(
                  controller: imgController,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    label: Text("Img URL"),
                    hintText: "Img URL",
                  ),
                ),
                SizedBox(height: 30,),
                FilledButton(onPressed: (){}, child: Text("Update product"))
              ],
            ),
          ),
        ),
      ),
    );
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

