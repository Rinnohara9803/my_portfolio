import 'package:flutter/material.dart';

import 'leftInfoBarDesktop.dart';

class LeftInfoBarTablet extends StatefulWidget {
  const LeftInfoBarTablet({Key? key}) : super(key: key);

  @override
  _LeftInfoBarDesktopState createState() => _LeftInfoBarDesktopState();
}

class _LeftInfoBarDesktopState extends State<LeftInfoBarTablet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage(
                  'images/ajay.JPG',
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Text(
                'Rinnohara9803',
                style: TextStyle(
                  letterSpacing: 1.5,
                  fontFamily: 'Tourney',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  5,
                ),
                gradient: LinearGradient(
                  colors: [Colors.lightGreenAccent, Colors.lightBlueAccent],
                ),
              ),
              child: theListTileWidget(),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  5,
                ),
                gradient: LinearGradient(
                  colors: [Colors.lightGreenAccent, Colors.lightBlueAccent],
                ),
              ),
              child: theDiscordListTileWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
