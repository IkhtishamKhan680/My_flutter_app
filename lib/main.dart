import 'package:flutter/material.dart';
import 'package:flutter_dash_board/dashboard_screen.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Stack demo widget',
      theme: ThemeData(
        colorScheme:.fromSeed(seedColor: Colors.lightGreen),
        textTheme: TextTheme(
          titleMedium: TextStyle(
            color: Colors.black,
            fontSize: 18.0,
          ),
        ),
      ),
      home: const DashboardScreen(),
    );
  }
}
