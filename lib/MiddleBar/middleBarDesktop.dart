import 'package:flutter/material.dart';
import 'package:my_portfolio/Utilities/theBoxes.dart';
import 'package:my_portfolio/course_details/courseDetails.dart';
import 'package:my_portfolio/widgets/theMiddleBarWidget.dart';

class MiddleBarDesktop extends StatefulWidget {
  const MiddleBarDesktop({Key? key}) : super(key: key);

  @override
  _MiddleBarDesktopState createState() => _MiddleBarDesktopState();
}

class _MiddleBarDesktopState extends State<MiddleBarDesktop> {
  @override
  Widget build(BuildContext context) {
    return MiddleBarWidget();
  }
}
