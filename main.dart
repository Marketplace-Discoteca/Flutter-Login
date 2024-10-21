import 'package:flutter/material.dart';
import 'package:flutter_login/screens/login_screen.dart';
import 'package:flutter_login/screens/creat_screen.dart';
import 'package:flutter_login/db/database.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DatabaseHelper.instance.database; // Inicializar la base de datos
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: LoginScreen(),
    );
  }
}
