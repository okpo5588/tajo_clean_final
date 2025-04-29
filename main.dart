import 'package:flutter/material.dart';
import 'board_screen.dart'; // 요거 추가한거야

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: BoardScreen(), // 요거: 첫 화면이 board_screen.dart에 있는 화면
    );
  }
}
