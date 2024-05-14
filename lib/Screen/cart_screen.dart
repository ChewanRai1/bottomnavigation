import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  TextEditingController principalController = TextEditingController();
  TextEditingController rateController = TextEditingController();
  TextEditingController timeController = TextEditingController();
  double simpleInterest = 0.0;

  void calculateSimpleInterest() {
    double principal = double.tryParse(principalController.text) ?? 0.0;
    double rate = double.tryParse(rateController.text) ?? 0.0;
    double time = double.tryParse(timeController.text) ?? 0.0;

    double interest = (principal * rate * time) / 100;
    setState(() {
      simpleInterest = interest;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculate Simple Interest'),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: principalController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Enter Principal Amount',
              ),
            ),
            SizedBox(height: 16),
            TextField(
              controller: rateController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Enter Interest Rate (%)',
              ),
            ),
            SizedBox(height: 16),
            TextField(
              controller: timeController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Enter Time Period (years)',
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: calculateSimpleInterest,
              child: Text('Calculate Simple Interest'),
            ),
            SizedBox(height: 16),
            Text(
              'Simple Interest: $simpleInterest',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
