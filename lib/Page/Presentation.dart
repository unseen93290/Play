import 'package:flutter/material.dart';

class Presentation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "Assets/Images/Presentation.jpg",
              height: 300,
              width: 300,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "Bienvenu a play . Vous trouverez tous celon vous avez besoin pour les jeux chez nous .... ",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
