import 'package:ecom/screens/splash/splash-scr.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          fontFamily: "Muli",
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: const SplashScreen(),
    );
  }
}
