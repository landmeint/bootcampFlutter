import 'package:firebase_core/firebase_core.dart';
import 'Tugas/Tugas11/routes.dart';
import 'package:flutter/material.dart';

Future main() async {
  // runApp(const MyApp());
  WidgetsFlutterBinding.ensureInitialized();
  // if(kIsWeb) {
  //   await Firebase.initializeApp(options: FirebaseOptions(apiKey: "AIzaSyDIL2PeR3s7jhkPMQnq-jKeXFJdJBh5uD0", appId: "1:380484377413:web:e8dfca41657ec652267c2c", messagingSenderId: "380484377413", projectId: "sanberauth-ebcf7"));
  // }
  await Firebase.initializeApp();
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

