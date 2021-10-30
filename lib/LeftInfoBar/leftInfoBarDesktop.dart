import 'package:flutter/material.dart';
import 'package:my_portfolio/Utilities/constants.dart';

class LeftInfoBarDesktop extends StatefulWidget {
  const LeftInfoBarDesktop({Key? key}) : super(key: key);

  @override
  _LeftInfoBarDesktopState createState() => _LeftInfoBarDesktopState();
}

class _LeftInfoBarDesktopState extends State<LeftInfoBarDesktop> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: CircleAvatar(
                radius: 75,
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
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Card(
              child: ListTile(
                leading: Icon(
                  Icons.email_outlined,
                ),
                title: Text(
                  'sagarprajapati9803@gmail.com',
                  style: TextStyle(
                    // fontFamily: theCircularFontFamily,
                    fontSize: 12,
                  ),
                ),
              ),
            ),
            Card(
              child: ListTile(
                leading: Container(
                  color: Colors.white,
                  child: Icon(
                    Icons.connect_without_contact_outlined,
                  ),
                ),
                title: Text(
                  'Rinnohara9803#5527',
                  style: TextStyle(
                    // fontFamily: theCircularFontFamily,
                    fontSize: 12,
                  ),
                ),
                subtitle: Text(
                  'let\'s connect in Discord :-)',
                  style: TextStyle(
                    fontSize: 12,
                    // fontFamily: theCircularFontFamily,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
