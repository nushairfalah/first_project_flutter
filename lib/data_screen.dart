import 'package:flutter/material.dart';

class DataScreen extends StatelessWidget {

  final String email;
  final String password;
  const DataScreen({super.key, required this.email, required this.password});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios)
          ),
        ),
      body: Column(
        children: [
          Text(
            "Email: $email, Password: $password",
            style: TextStyle(
              fontSize: 22,
            ),
          ),
        ],
      ),
    );
  }
}
