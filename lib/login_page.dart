import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          Image.asset("assets/images/login_image.png",
          fit: BoxFit.cover,
          ),
          
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Welcome to my app',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              )
              ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20,bottom: 20),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter Username',
                    labelText: 'Username',
                  ),
                ),
                TextField(
                  obscureText: true, //to hide passward, it shows passward in dote form
                  decoration: InputDecoration(
                    hintText: 'Enter Passward',
                    labelText: 'Passward',
                  ),
                ),
              ],
            ),
          ),
          ElevatedButton(
            child: Text('Login',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}