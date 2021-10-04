import 'package:flutter/material.dart';
import 'package:flutter_named_navigation/dashboard_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 300,
          padding: EdgeInsets.symmetric(vertical: 64.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset('assets/login.png', height: 64),
              SizedBox(height: 20),
              Text('Login',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              TextField(decoration: InputDecoration(labelText: "E-mail")),
              TextField(decoration: InputDecoration(labelText: "Senha")),
              SizedBox(height: 20),
              ElevatedButton(
                child: Text("Entrar"),
                onPressed: () => onButtonEntrarClicked(context),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void onButtonEntrarClicked(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => DashboardScreen(),
      ),
    );
  }
}
