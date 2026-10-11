import 'package:flutter/material.dart';

class textexample extends StatelessWidget {
  const textexample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Example'),
        ),
        backgroundColor: Colors.indigo,
      ),
      body: Center(
        child: Text(
          'Welcome',
          style: TextStyle(
            color: Colors.black87,
            fontSize: 40,
              fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
