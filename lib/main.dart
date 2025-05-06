import 'package:device_preview/device_preview.dart';
import 'package:feedplate/screen/googleSignScreen.dart';
import 'package:feedplate/screen/homeScreen.dart';
import 'package:feedplate/screen/mainScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    DevicePreview(
      builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Feedplate',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: Mainscreen(),
    );
  }
}
