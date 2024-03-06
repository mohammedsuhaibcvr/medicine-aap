import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:pills/firebase_options.dart';


import 'package:pills/home/splash.dart';


void main() async {
  
await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  WidgetsFlutterBinding.ensureInitialized();
  // await Hive.initFlutter();
  // await Hive.openBox("todo_db");

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: false,
      ),
      debugShowCheckedModeBanner: false,
      home: PSplash(),
    );
  }
}
