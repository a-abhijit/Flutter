import 'package:demoapp/widget/Calculator%20app/widget/widget_num.dart';
import 'package:flutter/material.dart';

class Calculatorapp extends StatefulWidget {
  const Calculatorapp({super.key});

  @override
  State<Calculatorapp> createState() => _CalculatorappState();
}

class _CalculatorappState extends State<Calculatorapp> {
  String _output = '0';
  String _input = '0';
  String _operator = '';
  double _num1 = 0;
  double _num2 = 0;

  void buttonPress(String value) {
    print("button pressed: $value");
    setState(() {
      if (value == 'c') {
        // ✅ Reset actual state variables
        _output = '0';
        _input = '0';
        _operator = '';
        _num1 = 0;
        _num2 = 0;
      }
      else if (value == '=') {
        // ✅ Parse the second number
        _num2 = double.tryParse(_input) ?? 0;

        if (_operator == "+") {
          _output = (_num1 + _num2).toString();
        } else if (_operator == '-') {
          _output = (_num1 - _num2).toString();
        } else if (_operator == 'x') {
          _output = (_num1 * _num2).toString();
        } else if (_operator == '÷') {
          _output = (_num2 != 0) ? (_num1 / _num2).toString() : 'error';
        }

        // Prepare for next calculation
        _input = _output;
        _operator = '';
      }
      else if (['+', '-', 'x', '÷'].contains(value)) {
        _num1 = double.tryParse(_input) ?? 0;
        _operator = value;
        _input = '';
      }
      else {
        // ✅ Append number correctly
        if (_input == '0') {
          _input = value;
        } else {
          _input += value;
        }
        _output = _input;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                alignment: Alignment.bottomRight,
                child: Text(
                  _output,
                  style: const TextStyle(
                    fontSize: 70,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Row(
              children: [
                numWidget(onClick: () => buttonPress('7'), num_text: '7'),
                numWidget(onClick: () => buttonPress('8'), num_text: '8'),
                numWidget(onClick: () => buttonPress('9'), num_text: '9'),
                numWidget(
                  onClick: () => buttonPress('÷'),
                  num_text: '÷',
                  color: Colors.orange,
                ),
              ],
            ),
            Row(
              children: [
                numWidget(onClick: () => buttonPress('4'), num_text: '4'),
                numWidget(onClick: () => buttonPress('5'), num_text: '5'),
                numWidget(onClick: () => buttonPress('6'), num_text: '6'),
                numWidget(
                  onClick: () => buttonPress('x'),
                  num_text: 'x',
                  color: Colors.orange,
                ),
              ],
            ),
            Row(
              children: [
                numWidget(onClick: () => buttonPress('1'), num_text: '1'),
                numWidget(onClick: () => buttonPress('2'), num_text: '2'),
                numWidget(onClick: () => buttonPress('3'), num_text: '3'),
                numWidget(
                  onClick: () => buttonPress('-'),
                  num_text: '-',
                  color: Colors.orange,
                ),
              ],
            ),
            Row(
              children: [
                numWidget(
                  onClick: () => buttonPress('c'),
                  num_text: 'c',
                  color: Colors.red,
                ),
                numWidget(onClick: () => buttonPress('0'), num_text: '0'),
                numWidget(onClick: () => buttonPress('='), num_text: '='),
                numWidget(
                  onClick: () => buttonPress('+'),
                  num_text: '+',
                  color: Colors.orange,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

