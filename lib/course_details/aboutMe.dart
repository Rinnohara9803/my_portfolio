import 'package:flutter/material.dart';
import 'package:my_portfolio/Utilities/constants.dart';
import 'package:responsive_builder/responsive_builder.dart';

class AboutMe extends StatefulWidget {
  const AboutMe({Key? key}) : super(key: key);

  @override
  _AboutMeState createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {
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
          return Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
                Text(
                  'About me',
                  style: TextStyle(
                    fontFamily: 'Tourney',
                    fontSize: titleSize,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Hello, ',
                  style: TextStyle(
                    // fontFamily: 'Circular',
                    fontSize: descriptionSize,
                    color: Colors.black87,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                  style: TextStyle(
                    // fontFamily: 'Circular',
                    fontWeight: FontWeight.w700,
                    fontSize: descriptionSize,
                    color: Colors.black87,
                  ),
                )
              ],
            ),
          );
        },
      );
    });
  }
}
