import 'package:flutter/material.dart';
import 'package:sanberappflutter/Tugas/Tugas11/routes.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Sanber Flutter",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w800,
                  color: Color.fromARGB(255, 116, 227, 255)),
              ),
              const SizedBox( height: 10, ),
              Image.asset(
                "assets/img/flutter.png",
                height: 80,
                width: 80,
              ),
              const SizedBox( height: 10, ),
              Container(
                height: 50,
                width: double.infinity,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  border: Border.all(color: Color.fromARGB(255, 116, 227, 255)),
                  borderRadius: BorderRadius.circular(10)),
                child: TextFormField(
                  decoration: InputDecoration.collapsed(hintText: "Username"),
                ),
              ),
              const SizedBox( height: 10 ),
              Container(
                height: 50,
                width: double.infinity,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  border: Border.all(color: Color.fromARGB(255, 116, 227, 255)),
                  borderRadius: BorderRadius.circular(10)),
                child: TextFormField(
                  decoration: InputDecoration.collapsed(hintText: "Password"),
                ),
              ),
              const SizedBox( height: 10 ),
              const Text(
                "Forgot Password",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Color.fromARGB(255, 116, 227, 255)),
              ),
              const SizedBox( height: 10 ),
              Container(
                height: 50,
                width: double.infinity,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  border: Border.all(color: Color.fromARGB(255, 116, 227, 255)),
                  borderRadius: BorderRadius.circular(10),
                  color:  Color.fromARGB(255, 116, 227, 255)),
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/');
                  },
                  child: const Text(
                    "Login",
                    style: TextStyle(
                      color: Color(0xffffffff), fontWeight: FontWeight.w500)
                  )
                )
              ),
              const SizedBox( height: 10 ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    "Does not have account? ",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                  ),
                  const Text(
                "Sign In",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Color.fromARGB(255, 116, 227, 255)),
              ),
                ],
              ),
              
              
            ],
          ),
        ),
      ),
    );
  }
}

