import 'package:club/themes/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:club/screens/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      
     home: const loginScreen(),
     theme: AppTheme.DarkTheme
    );
  }
}