import 'package:flutter/material.dart';
import 'package:my_portfolio/LeftInfoBar/leftInfoBar.dart';
import 'package:my_portfolio/MiddleBar/middleBar.dart';
import 'package:my_portfolio/TopBar/topBar.dart';
import 'package:my_portfolio/centered_view/centered_view.dart';
import 'package:my_portfolio/course_details/aboutMe.dart';

class HomeContentTablet extends StatefulWidget {
  const HomeContentTablet({Key? key}) : super(key: key);

  @override
  _HomeContentTabletState createState() => _HomeContentTabletState();
}

class _HomeContentTabletState extends State<HomeContentTablet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CenteredView(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 250,
              child: LeftInfoBar(),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    TopBar(),
                    AboutMe(),
                    MiddleBar(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
