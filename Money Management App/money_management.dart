import 'dart:ffi';

import 'package:demoapp/Money%20Management%20App/widget.dart';
import 'package:flutter/material.dart';

class MoneyManagement extends StatefulWidget {
  const MoneyManagement({super.key});

  @override
  State<MoneyManagement> createState() => _MoneyManagementState();
}

class _MoneyManagementState extends State<MoneyManagement>
    with SingleTickerProviderStateMixin {
  late TabController _tabcontroller;
  List<Map<String, dynamic>> _expense = [];
  List<Map<String, dynamic>> _earning = [];

  void addEntry(String title, double amount, DateTime date, bool isEarning) {
    if (isEarning) {
      _earning.add({"title": title, "amount": amount, "date": date});
    } else {
      _expense.add({"title": title, "amount": amount, "date": date});
    }
  }

  @override
  void floatingButtonOptions(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () => showForm(true),
                child: Text(
                  "Add Earnings",
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
              ),
              ElevatedButton(
                onPressed: () => showForm(false),
                child: Text(
                  "Add Expenses",
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              ),
            ],
          ),
        );
      },
    );
  } // <-- properly closed

  void showForm(bool isEarning) {
    TextEditingController textEditingController = TextEditingController();
    TextEditingController amountController = TextEditingController();
    DateTime entrydate = DateTime.now();
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Column(
          children: [
            Container(
              height: 30,
              color: Colors.white30,
              child: Text(
                isEarning ? 'Add Earnings' : "Add Expenses",
                style: TextStyle(fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                controller: textEditingController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  label: Text("title"),

                  // prefixIcon: isEarning ?Icon(Icons.arrow_upward):Icon(Icons.arrow_downward),
                  hintText: isEarning
                      ? 'add your earnings'
                      : "add your expenses",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                controller: amountController,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  label: Text(isEarning ? 'Earnings' : 'Expenses'),
                  prefixIcon: isEarning
                      ? Icon(Icons.arrow_upward)
                      : Icon(Icons.arrow_downward),

                  hintText: isEarning
                      ? 'add your earnings'
                      : "add your expenses",
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  if(isEarning == 'add your earnings'){
                    addEntry(textEditingController.text, double.parse(amountController.text), entrydate, true);

                  }else{
                    addEntry(textEditingController.text, double.parse(amountController.text), entrydate, false);
                  }


                });
              },
              child: Text(isEarning ? 'Add Earnings' : "Add Expenses"),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.white24),
            ),
          ],
        );
      },
    );
  }

  @override
  void dispose() {
    _tabcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "Money Management",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        backgroundColor: Colors.deepOrange.shade400,
        bottom: TabBar(
          controller: _tabcontroller,
          tabs: const [
            Tab(text: "Earning", icon: Icon(Icons.arrow_upward_rounded)),
            Tab(text: "Expenses", icon: Icon(Icons.arrow_downward_rounded)),
          ],
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              cardWidget(name: "Earnings", amount: 2500, color: Colors.green),
              cardWidget(name: "Expenses", amount: 2000, color: Colors.red),
              cardWidget(
                name: "Balance",
                amount: 2000,
                color: Colors.pinkAccent,
              ),
            ],
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () => floatingButtonOptions(context),
        child: Icon(Icons.add),
      ),
    );
  }
}


Widget _buildListView(List<Map<String, dynamic>> items,Color color,bool isEarning){
  return ListView.builder(
itemCount: items.length,
      itemBuilder: (context,index){
  return Card(
    
  );
      }

  );
}