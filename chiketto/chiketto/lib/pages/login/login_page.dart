import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late Size mediaSize;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool rememberUser = false;

  @override
  Widget build(BuildContext context) {
    mediaSize = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        color: HexColor("#FAF6E7"),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Positioned(top: 80,child: _buildTop()),
            Positioned(bottom: 0,child: _buildBottom())
          ],
        ),
      ),
    );
  }


  Widget _buildTop() {
    return SizedBox(
      width: mediaSize.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Icon(
                Icons.local_movies,
                size: 50,
                color: HexColor("#355952")
              ),
              Text(
                "Chiketto",
                style: TextStyle(
                  color: HexColor("#EAB63E"),
                  fontWeight: FontWeight.w900,
                  fontSize: 40
                ),
              )
            ],
          )
        ],
      ),
    );
  }


  Widget _buildBottom() {
    return SizedBox(
      width: mediaSize.width,
      child: Card(
        color: HexColor("#355952"),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30)
          )),
          child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: _buildForm(),
          ),
      ),
    );
  }

  Widget _buildForm() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Welcome", style: TextStyle(
          color: HexColor("#EAB63E"),
          fontSize: 32,
          fontWeight: FontWeight.w500
        )),
        Text("Masuk ke Chiketto", style: TextStyle(color: HexColor("#EAB63E")),),
        const SizedBox(height: 35),
        Text("Email Address", style: TextStyle(color: HexColor("#EAB63E")),),
        _buildInputField(emailController),
        Text("Password", style: TextStyle(color: HexColor("#EAB63E")),),
        _buildInputField(passwordController, isPassword:true),
        const SizedBox(height: 5),
        _buildRememberForgot(),
        const SizedBox(height: 10),
        _buildLoginButton()
      ],
    );
  }

  Widget _buildInputField(TextEditingController controller,
      {isPassword = false}) {
        return TextField(
          controller: controller,
          cursorColor: HexColor("#FAF6E7"),
          style: TextStyle(
            color: HexColor("#FAF6E7"),
            decorationColor: HexColor("#FAF6E7")
          ),
          decoration: InputDecoration(
            suffixIconColor: HexColor("#EAB63E"),
            suffixIcon: isPassword? const Icon(Icons.remove_red_eye):const Icon(Icons.done)
          ),
          obscureText: isPassword,
        );
  }

  Widget _buildRememberForgot() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Checkbox(value: rememberUser, activeColor: HexColor("#EAB63E"), onChanged: (value) {
              setState(() {
                rememberUser = value!;
              });
            }),
            Text("Remember me", style: TextStyle(color: HexColor("#EAB63E")),),
          ]
        ),
        // TextButton(onPressed: () {}, child: const Text("I forgot my password"),)
      ]
    );
  }

  Widget _buildLoginButton() {
    return ElevatedButton(
      onPressed: () {
        debugPrint("Email: ${emailController.text}");
        debugPrint("Password: ${passwordController.text}");
      },
      style: ElevatedButton.styleFrom(
        shape: const StadiumBorder(),
        elevation: 20,
        backgroundColor: HexColor("#FAF6E7"),
        minimumSize: const Size.fromHeight(50) 
      ), 
      child: Text("LOGIN", style: TextStyle(color: HexColor("#EAB63E")),));
  }
}

