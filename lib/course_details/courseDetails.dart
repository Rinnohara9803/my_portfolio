import 'package:flutter/material.dart';
import 'package:my_portfolio/Utilities/constants.dart';
import 'package:responsive_builder/responsive_builder.dart';

class WebDevelopmentDetails extends StatefulWidget {
  final String courseDetails;
  const WebDevelopmentDetails({Key? key, required this.courseDetails})
      : super(key: key);

  @override
  _WebDevelopmentDetailsState createState() => _WebDevelopmentDetailsState();
}

class _WebDevelopmentDetailsState extends State<WebDevelopmentDetails> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      return ResponsiveBuilder(
        builder: (context, sizingInformation) {
          double titleSize =
              sizingInformation.deviceScreenType == DeviceScreenType.mobile
                  ? 15
                  : 27;

          double descriptionSize =
              sizingInformation.deviceScreenType == DeviceScreenType.mobile
                  ? 10
                  : 15;
          return Padding(
            padding: const EdgeInsets.only(
              left: 10,
              right: 10,
              top: 10,
              bottom: 10,
            ),
            child: Container(
              child: Text(
                '${widget.courseDetails}',
                style: TextStyle(
                  // fontFamily: 'Circular',
                  fontWeight: FontWeight.w700,
                  fontSize: descriptionSize,
                  color: Colors.black87,
                ),
              ),
            ),
          );
        },
      );
    });
  }
}
