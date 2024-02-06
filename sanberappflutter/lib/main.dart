// import 'dart:io';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'Tugas/Tugas10/login_screen.dart';
// import 'Tugas/Tugas11/routes.dart';
// import 'Tugas/Tugas12/get_data_screen.dart';
// import 'Tugas/Tugas13/get_data_screen.dart';
// import 'package:sanberappflutter/Tugas/Tugas14/pages/page_1.dart';
// import 'package:sanberappflutter/Tugas/Tugas14/routes/page_routes.dart';
import 'package:sanberappflutter/Tugas/Tugas15/bloc/counter_bloc.dart';
import 'package:sanberappflutter/Tugas/Tugas15/counter_page.dart';


// Future<void> main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   Platform.isAndroid ? await Firebase.initializeApp(
//     options: const FirebaseOptions(
//       apiKey: "AIzaSyDldgYLnzv1driLRNi9PAA2A3JyZHXKyeQ", 
//       appId: "1:380484377413:android:31ae92820f8b3ade267c2c", 
//       messagingSenderId: "380484377413", 
//       projectId: "sanberauth-ebcf7")
//   ) : await Firebase.initializeApp();
  
//   // runApp(const MaterialApp(
//   //   onGenerateRoute: RouteGenerator.generateRoute
//   // ));
  
//   runApp(const MyApp());
// }

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'San Flutter',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      // home: const PageOne(),
      // getPages: pageRouteApp.pages,
      home: BlocProvider(
        create: (context) => CounterBloc(),
        child: const CounterPage(),
      ),
    );
  }
}

