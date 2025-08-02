import 'package:demoapp/flutterclass3.dart';
import 'package:flutter/material.dart';

import 'listview.dart';

class Module8class2 extends StatelessWidget {
  Module8class2({super.key});
  final _formkey = GlobalKey<FormState>();
  TextEditingController phoneCon = TextEditingController();
  TextEditingController passCon = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Module 8 class 2",
          style: TextStyle(color: Colors.white),
          textAlign: TextAlign.center,
        ),
      ),
      body: Column(
        children: [
          Center(
            child: Image.asset('asset/img_1.png', height: 100, width: 200),
          ),
          SizedBox(height: 40),
          Text(
            "Login with phone and pass",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          Form(
            key: _formkey,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Text(
                    "Phone number",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                  TextFormField(
                    controller: phoneCon,
                    decoration: InputDecoration(
                      hintText: "enter your number here",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "please enter your phone no";
                      }else if (value.length<11){
                        return 'enter correct phone no';
                      }else {return null;}
                    },
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    controller: passCon,
                    obscureText: true,
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      hintText: "password",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "please enter your password";
                      }else if (value.length<6){
                        return 'enter correct password';
                      }else {return null;}
                    },
                  ),
                  ElevatedButton(onPressed: (){
                    if(_formkey.currentState!.validate()){
                      // Navigator.push(context, MaterialPageRoute(builder: (context)=>ListV()));
                      //Navigator.push(context, MaterialPageRoute(builder: (context)=>ListV()));
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ListV(name: phoneCon.text)));
                    }
                  }, child: Text("Submit"))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
