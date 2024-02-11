import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import '../login/login_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(height: 20),
            const CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage('assets/img/profile.png'),
            ),
            const SizedBox(height: 20),
            itemProfile("Nama", "Abdullah Zakaria", Icons.person),
            const SizedBox(height: 10),
            itemProfile("Phone", "085733313551", Icons.phone),
            const SizedBox(height: 10),
            itemProfile("Address", "Malang, East Java", Icons.map),
            const SizedBox(height: 10),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: () {
                  Navigator.push(context, 
                  MaterialPageRoute(builder: ((context) => const LoginPage()))
                );
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(15)
              ),
              child: Text('Log out', style: TextStyle(color: HexColor("#EAB63E")),)),
            )
          ],
        ),
      ),
    );
  }

  Container itemProfile(title, subtitle, icon) {
    return Container(
            decoration: BoxDecoration(
              color: HexColor("#355952"),
              boxShadow: [
                BoxShadow(
                  offset: const Offset(0, 5),
                  color: HexColor("#EAB63E").withOpacity(.2),
                  blurRadius: 10,
                  spreadRadius: 5
                )
              ]
            ),
            child: ListTile(
              title: Text(title, style: TextStyle(color: HexColor("#EAB63E"))),
              subtitle: Text(subtitle, style: TextStyle(color: HexColor("#FAF6E7"))),
              leading: Icon(icon, color: HexColor("#EAB63E")),
              tileColor: HexColor("#355952"),
            ),
          );
  }
}