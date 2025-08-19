import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: AllSample()));
}

class AllSample extends StatelessWidget {
  const AllSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Container, Padding, Margin")),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // 1️⃣ Container with color, width, height
          Container(
            height: 80,
            color: Colors.blue,
            child: const Center(
              child: Text(
                "Container - simple",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          const SizedBox(height: 20),

          // 2️⃣ Container with Padding inside
          Container(
            color: Colors.green,
            child: const Padding(
              padding: EdgeInsets.all(16.0), // internal spacing
              child: Text(
                "Container with Padding",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          const SizedBox(height: 20),

          // 3️⃣ Container with Margin outside
          Container(
            margin: const EdgeInsets.all(16.0), // external spacing
            color: Colors.orange,
            height: 80,
            child: const Center(
              child: Text(
                "Container with Margin",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),

          const SizedBox(height: 20),

          // 4️⃣ Container with Padding + Margin
          Container(
            margin: const EdgeInsets.all(16.0), // external spacing
            padding: const EdgeInsets.all(12.0), // internal spacing
            color: Colors.purple,
            child: const Text(
              "Container with Padding + Margin",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}