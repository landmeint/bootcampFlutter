import 'package:flutter/material.dart';
import 'Tugas/Tugas11/routes.dart';

void main() {
  // runApp(const MyApp());
  runApp(MaterialApp(
    onGenerateRoute: RouteGenerator.generateRoute
  ));
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'San Flutter',
//       theme: ThemeData(
        
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
//         useMaterial3: true,
//       ),
//       home: const HomeScreen(),
//     );
//   }
// }

