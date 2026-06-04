import 'package:catalog_application/utils/routs.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/images/login_image.png",
            fit: BoxFit.cover,
            ),
            
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Welcome to my app $name',
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
                    onChanged: (value) {
                      name = value;
                      setState(() {
                        
                      });
                    },
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
            ElevatedButton (
              child: Text('Login',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
              ),
              onPressed: () async {
                await Future.delayed(Duration(seconds: 1));
                // ignore: use_build_context_synchronously
                Navigator.pushNamed(context, Routes.homeRoute);
                
              },
            ),
          ],
        ),
      ),
    );
  }
}