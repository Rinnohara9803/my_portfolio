import 'package:flutter/material.dart';
import 'package:my_portfolio/MiddleBar/middleBar.dart';
import 'package:my_portfolio/TopBar/topBar.dart';
import 'package:my_portfolio/Utilities/theBoxes.dart';
import 'package:my_portfolio/centered_view/centered_view.dart';
import 'package:my_portfolio/course_details/aboutMe.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeContentMobile extends StatefulWidget {
  const HomeContentMobile({Key? key}) : super(key: key);

  @override
  _HomeContentMobileState createState() => _HomeContentMobileState();
}

class _HomeContentMobileState extends State<HomeContentMobile> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  static const _facebookUrl =
      'https://www.facebook.com/profile.php?id=100008867498604';

  void _launchfacebook() async => await canLaunch(_facebookUrl)
      ? await launch(_facebookUrl)
      : throw 'Could not launch $_facebookUrl';

  static const _instagramUrl =
      'https://www.instagram.com/rin.nohara9803/?hl=en';

  void _launchInstagram() async => await canLaunch(_instagramUrl)
      ? await launch(_instagramUrl)
      : throw 'Could not launch $_instagramUrl';

  static const _githubUrl = 'https://github.com/Rinnohara9803';

  void _launchGitHub() async => await canLaunch(_githubUrl)
      ? await launch(_githubUrl)
      : throw 'Could not launch $_githubUrl';

  static const _linkedInUrl =
      'https://www.linkedin.com/in/sagar-prajapati-65bbbb1a8/';

  void _launchLinkedIn() async => await canLaunch(_linkedInUrl)
      ? await launch(_linkedInUrl)
      : throw 'Could not launch $_linkedInUrl';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      drawer: Drawer(
        elevation: 10,
        child: navigationBar(
          _launchfacebook,
          _launchInstagram,
          _launchGitHub,
          _launchLinkedIn,
        ),
      ),
      body: CenteredView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    print('Drawer Opened');
                    _key.currentState!.openDrawer();
                  },
                  icon: Icon(
                    Icons.menu,
                  ),
                ),
                Text(
                  'Rinnohara9803',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Tourney',
                    fontSize: 20,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView(
                children: [
                  TopBar(),
                  AboutMe(),
                  MiddleBar(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
