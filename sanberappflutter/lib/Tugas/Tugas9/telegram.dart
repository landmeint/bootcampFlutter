import 'package:flutter/material.dart';
import 'package:sanberappflutter/Tugas/Tugas9/drawer_screen.dart';
import 'package:sanberappflutter/Tugas/Tugas9/Models/chart_model.dart';

class Telegram extends StatefulWidget {
  const Telegram({super.key});

  @override
  State<Telegram> createState() => _TelegramState();
}

class _TelegramState extends State<Telegram> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Telegram", style: TextStyle(color: Colors.white)),
        actions: const <Widget>[
          Padding(padding: EdgeInsets.all(8.0),
          child: Icon(Icons.search, color: Colors.white)
          )
        ],
        backgroundColor: Colors.blue.shade500
      ),
      drawer: const DrawerScreen(),
      body: ListView.separated(
        itemBuilder: (ctx, i){
          return ListTile(
            leading: CircleAvatar(
              radius: 28,
              backgroundImage: NetworkImage(items[i].profileUrl!),
            ),
            title: Text(items[i].name!, style: TextStyle(fontWeight: FontWeight.bold)),
            subtitle: Text(items[i].message!),
            trailing: Text(items[i].time!),
          );
        },
        separatorBuilder:(ctx,i){
            return Divider();
        },itemCount: items.length),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.create, color: Colors.white),
          backgroundColor: Color(0xFF65a9e0),
          onPressed: (){},),
    );
  }
}