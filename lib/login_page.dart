import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'dashboard_page.dart'; // Import dashboard

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GetStorage _storage = GetStorage();
  bool _isLoggedIn = false;

  @override
  void initState() {
    super.initState();
    _checkLoginStatus(); // Check login status on initialization
  }

  // Check login status
  Future<void> _checkLoginStatus() async {
    await GetStorage.init();
    _isLoggedIn = _storage.read<bool>('isLoggedIn') ?? false;
    if (_isLoggedIn) {
      // If logged in, navigate to dashboard
      _navigateToDashboard();
    }
  }

  // Function to navigate to the dashboard
  void _navigateToDashboard() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const DashboardPage()),
    );
  }

  // Function to handle login
  void _handleLogin() {
    final String username = _usernameController.text;
    final String password = _passwordController.text;

    // Simulate login success (replace with your actual authentication logic)
    if (username == 'joko' && password == 'wi') {
      _storage.write('isLoggedIn', true); // Set login status to true
      _navigateToDashboard(); // Navigate to dashboard
    } else {
      // Show error message
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Invalid username or password'),
          duration: Duration(seconds: 2),
        ),
      );
    }
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
        backgroundColor: const Color.fromARGB(255, 137, 91, 218),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _usernameController,
              decoration: const InputDecoration(
                labelText: 'Username',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: const InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 32),
            ElevatedButton(onPressed: _handleLogin, child: const Text('Login')),
          ],
        ),
      ),
    );
  }
}
