import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:job_finder_app/screens/home/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'job Finder App',
      theme: ThemeData(
        primaryColor: Color(0xFF43B1B7),
        colorScheme:
            ColorScheme.fromSwatch().copyWith(secondary: Color(0xFFFED408)),
      ),
      home: HomePage(),
    );
  }
}
