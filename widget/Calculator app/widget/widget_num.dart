import 'package:flutter/material.dart';

class numWidget extends StatelessWidget {
  final String num_text;
  final Color? color;
  final VoidCallback onClick;

  const numWidget({
    super.key,
    required this.num_text,
    this.color,
    required this.onClick

  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: ElevatedButton(onPressed: onClick,
            child: Text(num_text, style: TextStyle(fontSize: 50, color: Colors.white)),
            style: ElevatedButton.styleFrom(
                backgroundColor: color ?? Colors.grey.shade600,
                padding: EdgeInsets.all(15)
            )
      
        ),
      ),
    );
  }
}
