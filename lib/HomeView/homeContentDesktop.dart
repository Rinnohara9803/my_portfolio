import 'package:flutter/material.dart';
import 'package:my_portfolio/LeftInfoBar/leftInfoBar.dart';
import 'package:my_portfolio/MiddleBar/middleBar.dart';
import 'package:my_portfolio/TopBar/topBar.dart';
import 'package:my_portfolio/centered_view/centered_view.dart';
import 'package:my_portfolio/course_details/aboutMe.dart';

class HomeContentDesktop extends StatefulWidget {
  const HomeContentDesktop({Key? key}) : super(key: key);

  @override
  _HomeContentDesktopState createState() => _HomeContentDesktopState();
}

class _HomeContentDesktopState extends State<HomeContentDesktop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CenteredView(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 300,
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
