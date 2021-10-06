import 'dart:async';

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:play/Page/Authentification.dart';
import 'Page/ChoixPages.dart';

import 'package:splashscreen/splashscreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.orangeAccent,
        body: AnimatedSplashScreen(
          duration: 1500,
          splash: Image.asset(
            "Assets/Images/DoobleLogo.png",
          ),
          nextScreen: ChoixPages(),
        ),
      ),
    );
  }
}
