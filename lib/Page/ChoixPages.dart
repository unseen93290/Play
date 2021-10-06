import 'package:flutter/material.dart';
import 'package:play/Page/Authentification.dart';
import 'package:play/Page/Presentation.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ChoixPages extends StatefulWidget {
  bool choixChemin = false;
  ChoixPages({this.choixChemin});

  @override
  _ChoixPagesState createState() => _ChoixPagesState();
}

class _ChoixPagesState extends State<ChoixPages> {
  @override
  Widget build(BuildContext context) {
    print(widget.choixChemin);
    return widget.choixChemin == true ? Presentation() : Authentification();
  }
}
