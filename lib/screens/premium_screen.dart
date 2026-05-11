import 'package:flutter/material.dart';

class PremiumScreen extends StatelessWidget {
  const PremiumScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Premium'),
      ),
      body: Column(
        children: [
          Center(child: Text('Premium')),
        ],
      ),
    );
  }
}
