import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  String? email;
  String? password;

  SecondScreen({
    required this.email,
    required this.password,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Text('Email: ${email ?? 'initial'}'),
              Text('Password: ${password != null ? password : 'initial'}'),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Back'),
                ),
              ),
            ],
          ),
        ));
  }
}
