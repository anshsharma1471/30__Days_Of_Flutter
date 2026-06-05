import 'package:catalog_application/utils/routs.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;

  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    setState(() {
      changeButton = true;
    });
    await Future.delayed(Duration(seconds: 1));
     // ignore: use_build_context_synchronously
      Navigator.pushNamed(context, Routes.homeRoute);
      setState(() {
        changeButton = false;
      });
                  
  }
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Image.asset("assets/images/login_image.png",
              fit: BoxFit.cover,
              ),
              
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Welcome to my app ${name.isNotEmpty ? name : "Guest"}',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  )
                  ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20,bottom: 20),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Enter Username',
                        labelText: 'Username',
                      ),
                      onChanged: (value) {
                        name = value;
                        setState(() {
                          
                        });
                      },
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Username cannot be empty";
                        } 
                        return null;
                      },
                    ),
                    TextFormField(
                      obscureText: true, //to hide passward, it shows passward in dote form
                      decoration: InputDecoration(
                        hintText: 'Enter Passward',
                        labelText: 'Passward',
                      ),
                      validator: (value) {
                        if(value == null || value.isEmpty) {
                          return "Passward cannot be empty";
                        } else if (value.length < 6) {
                          return "Password length should be at least 6";
                        }
                        return null;
                      },
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
                onPressed: () {
                  if(_formKey.currentState!.validate()) {
                    moveToHome(context);
                  }
                }
              ),
            ],
          ),
        ),
      ),
    );
  }
}