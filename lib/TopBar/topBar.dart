import 'package:flutter/material.dart';
import 'package:my_portfolio/TopBar/topBarDesktop.dart';
import 'package:my_portfolio/TopBar/topBarMobile.dart';
import 'package:my_portfolio/TopBar/topBarTablet.dart';
import 'package:responsive_builder/responsive_builder.dart';

class TopBar extends StatefulWidget {
  const TopBar({Key? key}) : super(key: key);

  @override
  _TopBarState createState() => _TopBarState();
}

class _TopBarState extends State<TopBar> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: TopBarMobile(),
      tablet: TopBarTablet(),
      desktop: TopBarDesktop(),
    );
  }
}
