import 'package:flutter/material.dart';

class LeftInfoBarMobile extends StatefulWidget {
  const LeftInfoBarMobile({Key? key}) : super(key: key);

  @override
  _LeftInfoBarDesktopState createState() => _LeftInfoBarDesktopState();
}

class _LeftInfoBarDesktopState extends State<LeftInfoBarMobile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 110,
              color: Colors.black,
            ),
            Container(
              height: 10,
              color: Colors.red,
            ),
            Container(
              height: 50,
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
