import 'package:flutter/material.dart';
import 'package:my_portfolio/HomeView/homeview.dart';

void main() async {
  runApp(MyPortFolio());
}

class MyPortFolio extends StatefulWidget {
  MyPortFolio({Key? key}) : super(key: key);

  @override
  _MyPortFolioState createState() => _MyPortFolioState();
}

class _MyPortFolioState extends State<MyPortFolio> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rinnohara9803',
      home: HomeView(),
    );
  }
}
