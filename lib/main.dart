import 'package:flutter/material.dart';
import 'package:whatsapp_ui/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFF111b21),
        textTheme: Typography().white,
      ),
      home: Home(),
    );
  }
}
