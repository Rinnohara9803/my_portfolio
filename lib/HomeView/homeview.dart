import 'package:flutter/material.dart';
import 'package:my_portfolio/HomeView/homeContentDesktop.dart';
import 'package:my_portfolio/HomeView/homeContentMobile.dart';
import 'package:my_portfolio/HomeView/homeContentTablet.dart';
import 'package:my_portfolio/LeftInfoBar/leftInfoBar.dart';
import 'package:my_portfolio/TopBar/topBar.dart';
import 'package:my_portfolio/TopBar/topBarDesktop.dart';
import 'package:my_portfolio/centered_view/centered_view.dart';

import 'package:my_portfolio/course_details/aboutMe.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: HomeContentMobile(),
      tablet: HomeContentTablet(),
      desktop: HomeContentDesktop(),
    );
  }
}
