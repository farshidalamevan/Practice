import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  LoginForm({super.key});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController _passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Form'),
        backgroundColor: Colors.yellow.shade400,

        leading: Icon(Icons.login, size: 30),
        titleTextStyle: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 25,
          color: Colors.black,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.lock, size: 80),
          SizedBox(height: 10),
          TextField(
            controller: emailController,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              labelText: 'Enter your email',
              hintText: 'name@email.com',
              prefixIcon: Icon(Icons.email_outlined),
              border: OutlineInputBorder(),
              filled: true,
              fillColor: Colors.grey.shade200,
              // helper: Text('Enter your email')
            ),
          ),
          SizedBox(height: 20),
          TextField(
            keyboardType: TextInputType.text,
            controller: _passController,
            decoration: InputDecoration(
              labelText: 'Enter your password',
              hintText: 'password',
              prefixIcon: Icon(Icons.password),
              border: OutlineInputBorder(),
              filled: true,
              fillColor: Colors.grey.shade200,
            ),
            obscureText: true,
          ),
          SizedBox(height: 30),
          ElevatedButton(
            onPressed: () {
              print(
                "Email: ${emailController.text}\nPassword: ${_passController.text} ");},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              foregroundColor: Colors.white,
              padding: EdgeInsets.only(left: 50, right: 50),
            ),
            child: Text('Login', style: TextStyle(fontSize: 20)),
          ),
        ],
      ),
    );
  }
}
