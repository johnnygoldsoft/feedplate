import 'package:device_preview/device_preview.dart';
import 'package:feedplate/screen/googleSignScreen.dart';
import 'package:feedplate/screen/homeScreen.dart';
import 'package:feedplate/screen/mainScreen.dart';
import 'package:feedplate/screen/servicesScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(
    // DevicePreview(
    //   isToolbarVisible: false,
    //   builder: (context) => const MyApp(),
    // ),
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Feedplate',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
          useMaterial3: true,
        ),
        home: Googlesignscreen(),
      ),
    );
  }
}
