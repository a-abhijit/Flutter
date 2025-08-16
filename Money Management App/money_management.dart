import 'package:flutter/material.dart';

class MoneyManagement extends StatefulWidget {
  const MoneyManagement({super.key});

  @override
  State<MoneyManagement> createState() => _MoneyManagementState();
}

class _MoneyManagementState extends State<MoneyManagement>
    with SingleTickerProviderStateMixin {
  late TabController _tabcontroller;

  @override
  void initState() {
    super.initState();
    _tabcontroller = TabController(length: 2, vsync: this);
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
      body: TabBarView(
        controller: _tabcontroller,
        children: const [
          Center(child: Text("Earnings Page")),
          Center(child: Text("Expenses Page")),
        ],
      ),
    );
  }
}
