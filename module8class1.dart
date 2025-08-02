import 'package:flutter/material.dart';

class Module8Class1 extends StatelessWidget {
  const Module8Class1({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController phoneController = TextEditingController();
    TextEditingController passController = TextEditingController();
    TextEditingController idController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text("Module 8", style: TextStyle(fontSize: 30)),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: TextField(
              keyboardType: TextInputType.phone,
              controller: phoneController,
              decoration: InputDecoration(
                hintText: 'enter your num',
                labelText: 'Phone no',
                hintStyle: TextStyle(color: Colors.black),
                prefixIcon: Icon(Icons.call),
                suffixIcon: Icon(Icons.check),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: TextField(
              keyboardType: TextInputType.visiblePassword,
              obscureText: true,
              controller: passController,
              decoration: InputDecoration(
                hintText: 'enter your pass',
                labelText: 'Password',
                hintStyle: TextStyle(color: Colors.black),
                suffixIcon: Icon(Icons.remove_red_eye),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                prefixIcon: Icon(Icons.lock),
              ),
            ),
          ),

          SizedBox(height: 30),

          SizedBox(
            height: 50,
            width: 300,
            child: ElevatedButton(
              onPressed: () {
                if (phoneController.text.isEmpty == true) {
                  //   print("Phone no can't be empty");
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Phone no can't be empty")),
                  );
                } else if (phoneController.text.length < 11) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Phone no should be of 11 digits")),
                  );
                } else {
                  ScaffoldMessenger.of(
                    context,
                  ).showSnackBar(SnackBar(content: Text("valid num")));
                }
              },

              child: Text("Submit"),
            ),
          ),
          SizedBox(height: 40),

          Container(
            height: 100,
            width: 100,

            child: Text("Container"),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.amberAccent,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(width: 4, color: Colors.red),
              boxShadow: [BoxShadow(color: Colors.grey, offset: Offset(6, 6))],
            ),
          ),

          SizedBox(height: 20),

          Card(
            child: Text("Im card"),
            color: Colors.green,
            
          )


        ],
      ),
    );
  }
}
