import 'package:flutter/material.dart';
import 'package:my_portfolio/MiddleBar/middleBarDesktop.dart';
import 'package:my_portfolio/MiddleBar/middleBarMobile.dart';
import 'package:my_portfolio/MiddleBar/middleBarTablet.dart';
import 'package:responsive_builder/responsive_builder.dart';

class MiddleBar extends StatefulWidget {
  const MiddleBar({Key? key}) : super(key: key);

  @override
  _MiddleBarState createState() => _MiddleBarState();
}

class _MiddleBarState extends State<MiddleBar> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MiddleBarMobile(),
      tablet: MiddleBarTablet(),
      desktop: MiddleBarDesktop(),
    );
  }
}
