import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import '../CustomWidget/TextAnimation.dart';
import '../CustomWidget/RegisterButton.dart';
import '../Page/Register.dart';

class Authentification extends StatefulWidget {
  final choixPage;

  Authentification({this.choixPage});

  @override
  _AuthentificationState createState() => _AuthentificationState();
}

class _AuthentificationState extends State<Authentification> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          height: 2000,
          width: 2000,
          alignment: Alignment.bottomRight,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(right: 150),
                  child: Padding(
                    padding: EdgeInsets.only(left: 30),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Hero(
                          tag: "DoobleLogo1",
                          child: Container(
                            child: Image.asset("Assets/Images/DoobleLogo.png"),
                            height: 100,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        AnimatedTextKit(
                          animatedTexts: [
                            TyperAnimatedText(
                              "Play",
                              textStyle: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 60),
                              speed: Duration(milliseconds: 150),
                              textAlign: TextAlign.start,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 60,
              ),
              RegisterButton(
                color: Colors.deepOrange,
                text: "Enregistrez vous",
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => Register(),
                      ));
                },
              ),
              SizedBox(
                height: 20,
              ),
              RegisterButton(
                color: Colors.deepOrange,
                text: "Connectez vous",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => Authentification(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
