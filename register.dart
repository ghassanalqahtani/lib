import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const TextField(decoration: InputDecoration(labelText: 'Full Name')),
          const SizedBox(height: 16),
          const TextField(decoration: InputDecoration(labelText: 'Email')),
          const SizedBox(height: 24),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
            child: const Text('Create Account', style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }
}
