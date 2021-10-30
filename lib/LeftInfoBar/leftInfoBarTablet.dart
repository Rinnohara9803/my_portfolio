import 'package:flutter/material.dart';

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
            Card(
              child: ListTile(
                leading: IconButton(
                  onPressed: () {},
                  iconSize: 15,
                  icon: Icon(
                    Icons.email_outlined,
                  ),
                ),
                title: Text(
                  'sagarprajapati9803@gmail.com',
                  style: TextStyle(
                    // fontFamily: theCircularFontFamily,

                    fontSize: 10,
                  ),
                ),
              ),
            ),
            Card(
              child: ListTile(
                leading: Container(
                  color: Colors.white,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.connect_without_contact_outlined,
                    ),
                  ),
                ),
                title: Text(
                  'Rinnohara9803#5527',
                  style: TextStyle(
                    // fontFamily: theCircularFontFamily,
                    fontSize: 10,
                  ),
                ),
                subtitle: Text(
                  'let\'s connect in Discord :-)',
                  style: TextStyle(
                    fontSize: 10,
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
