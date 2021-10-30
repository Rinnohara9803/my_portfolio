import 'package:flutter/material.dart';
import 'package:my_portfolio/LeftInfoBar/leftInfoBarDesktop.dart';
import 'package:my_portfolio/LeftInfoBar/leftInfoBarMobile.dart';
import 'package:my_portfolio/LeftInfoBar/leftInfoBarTablet.dart';
import 'package:responsive_builder/responsive_builder.dart';

class LeftInfoBar extends StatefulWidget {
  const LeftInfoBar({Key? key}) : super(key: key);

  @override
  _LeftInfoBarState createState() => _LeftInfoBarState();
}

class _LeftInfoBarState extends State<LeftInfoBar> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: LeftInfoBarMobile(),
      tablet: LeftInfoBarTablet(),
      desktop: LeftInfoBarDesktop(),
    );
  }
}
