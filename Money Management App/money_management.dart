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

  double get totalEarnings {
    double sum = 0;
    for (var item in _earning) {
      sum += item['amount'] as double;
    }
    return sum;
  }

  double get totalExpenses {
    double sum = 0;
    for (var item in _expense) {
      sum += item['amount'] as double;
    }
    return sum;
  }

  double get balance => totalEarnings - totalExpenses;


  @override
  void initState() {
    super.initState();
    _tabcontroller = TabController(length: 2, vsync: this); // initialize
  }

  void addEntry(String title, double amount, DateTime date, bool isEarning) {
    if (isEarning) {
      _earning.add({"title": title, "amount": amount, "date": date});
    } else {
      _expense.add({"title": title, "amount": amount, "date": date});
    }
  }

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
                child: const Text(
                  "Add Earnings",
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
              ),
              ElevatedButton(
                onPressed: () => showForm(false),
                child: const Text(
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
  }

  void showForm(bool isEarning) {
    TextEditingController textEditingController = TextEditingController();
    TextEditingController amountController = TextEditingController();
    DateTime entrydate = DateTime.now();

    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(

            children: [
              Text(
                isEarning ? 'Add Earnings' : "Add Expenses",
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              TextField(
                controller: textEditingController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  label: const Text("Title"),
                  hintText: isEarning
                      ? 'Enter earning source'
                      : "Enter expense type",
                ),
              ),
              const SizedBox(height: 10),
              TextField(
                controller: amountController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  label: Text(isEarning ? 'Earnings' : 'Expenses'),
                  prefixIcon: isEarning
                      ? const Icon(Icons.arrow_upward, color: Colors.green)
                      : const Icon(Icons.arrow_downward, color: Colors.red),
                  hintText: "Enter amount",
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    addEntry(
                      textEditingController.text,
                      double.tryParse(amountController.text) ?? 0,
                      entrydate,
                      isEarning,
                    );
                  });
                  Navigator.pop(context); // close modal after adding
                  Navigator.pop(context); // close modal after adding
                   // close modal after adding
                },
                child: Text(isEarning ? 'Add Earnings' : "Add Expenses"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepOrange.shade200,
                ),
              ),
            ],
          ),
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
            "Money Manager",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        backgroundColor: Colors.brown.shade500,
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
              cardWidget(name: "Earnings", amount: totalEarnings, color: Colors.green.shade400.withOpacity(0.7)),
              cardWidget(name: "Expenses", amount: totalExpenses, color: Colors.red.shade400.withOpacity(0.7)),
              cardWidget(
                name: "Balance",
                amount: balance,
                color: Colors.blue.shade400.withOpacity(0.7),
              ),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: _tabcontroller,
              children: [
                _buildListView(_earning, Colors.green, true),
                _buildListView(_expense, Colors.red, false),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => floatingButtonOptions(context),
        child: const Icon(Icons.add),
      ),
    );
  }
}

Widget _buildListView(
    List<Map<String, dynamic>> items,
    Color color,
    bool isEarning,
    ) {
  return ListView.builder(
    itemCount: items.length,
    itemBuilder: (context, index) {
      return Card(

        elevation: 4,
        color: Colors.white.withOpacity(0.2),
        child: ListTile(
          title: Text(items[index]['title']),
          subtitle: Text(items[index]['date'].toString()),
          leading: CircleAvatar(
            backgroundColor: color.withOpacity(0.2),
            child: isEarning
                ? const Icon(Icons.arrow_upward, color: Colors.green)
                : const Icon(Icons.arrow_downward, color: Colors.red),
          ),
          trailing: Text("${items[index]['amount']} taka",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),

        ),
      );
    },
  );
}
