import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:pills/home.dart';
import 'package:pills/order.dart';
import 'package:pills/home/splash.dart';
import 'package:pills/todo/todo.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox("todo_db");

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
      home: const PSplash(),
    );
  }
}
