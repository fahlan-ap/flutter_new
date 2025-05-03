import 'package:flutter/material.dart';

class LoginScreen2 extends StatefulWidget {
  const LoginScreen2({super.key});

  @override
  State<LoginScreen2> createState() => _LoginScreen2State();
}

class _LoginScreen2State extends State<LoginScreen2> {
  bool passwordVisible = true;

  showPassword() {
    setState(() {
      passwordVisible = !passwordVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: !passwordVisible ? Colors.blue[50] : Colors.grey [400],
      body: Column(
        children: [
          TextField(),
          TextField(
            obscureText: passwordVisible,
            decoration: InputDecoration(
              suffixIcon: passwordVisible ? Icon(Icons.visibility_off) : Icon(Icons.visibility),
              labelText: "Password",
              hintText: "Enter your password",
            ),
            ),
          ElevatedButton(
            onPressed: () {
              showPassword();
            },
            child: Text('Show Password'),
          ),
        ],
      ),
    );
  }
}
