import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController num1Controller = TextEditingController();
  TextEditingController num2Controller = TextEditingController();
  int resultAdd = 0;
  int resultSubtract = 0;

  void calculateAddition() {
    int num1 = int.tryParse(num1Controller.text) ?? 0;
    int num2 = int.tryParse(num2Controller.text) ?? 0;
    setState(() {
      resultAdd = num1 + num2;
    });
  }

  void calculateSubtraction() {
    int num1 = int.tryParse(num1Controller.text) ?? 0;
    int num2 = int.tryParse(num2Controller.text) ?? 0;
    setState(() {
      resultSubtract = num1 - num2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add and Subtract'),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: num1Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Enter Number 1',
              ),
            ),
            SizedBox(height: 16),
            TextField(
              controller: num2Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Enter Number 2',
              ),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: calculateAddition,
                  child: Text('Add'),
                ),
                ElevatedButton(
                  onPressed: calculateSubtraction,
                  child: Text('Subtract'),
                ),
              ],
            ),
            SizedBox(height: 16),
            Text('Addition Result: $resultAdd', style: TextStyle(fontSize: 20)),
            Text('Subtraction Result: $resultSubtract',
                style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
