import 'package:flutter/material.dart';
import 'items.dart';
import 'login.dart';
import 'register.dart';

void main() {
  runApp(const Task2());
}

class Task2 extends StatelessWidget {
  const Task2({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Task2',
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedScreenIndex = 0;

  final List<Widget> _screens = [
    const HomeScreen(),
    const ItemsScreen(),
    const LoginScreen(),
    const RegisterScreen(),
  ];

  final List<String> _titles = [
    'Home Page',
    'Items Page',
    'Login Page',
    'Register Page',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(_titles[_selectedScreenIndex]),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              decoration: const BoxDecoration(color: Colors.green),
              currentAccountPicture: GestureDetector(
                onTap: () {
                  setState(() {
                    _selectedScreenIndex = 0;
                  });
                  Navigator.pop(context);
                },
                child: const CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(Icons.person, size: 40, color: Colors.green),
                ),
              ),
              accountName: const Text('Task2'),
              accountEmail: const Text('user@email.com'),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              selected: _selectedScreenIndex == 0,
              onTap: () {
                setState(() {
                  _selectedScreenIndex = 0;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.list),
              title: const Text('Items'),
              selected: _selectedScreenIndex == 1,
              onTap: () {
                setState(() {
                  _selectedScreenIndex = 1;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.login),
              title: const Text('Login'),
              selected: _selectedScreenIndex == 2,
              onTap: () {
                setState(() {
                  _selectedScreenIndex = 2;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.person_add),
              title: const Text('Register'),
              selected: _selectedScreenIndex == 3,
              onTap: () {
                setState(() {
                  _selectedScreenIndex = 3;
                });
                Navigator.pop(context);
              },
            ),
            const Spacer(),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.logout, color: Colors.red),
              title: const Text('Log Out', style: TextStyle(color: Colors.red)),
              onTap: () {
                Navigator.pop(context);
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('تم تسجيل الخروج')),
                );
              },
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
      body: _screens[_selectedScreenIndex],
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Home Page',
        style: TextStyle(
          fontSize: 24,
          color: Colors.grey,
        ),
      ),
    );
  }
}
