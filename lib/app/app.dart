
import 'package:flutter/material.dart';
import 'package:navigation/Screen/dashboard_scren.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: DashboardScreen(),
    );
  }
}
