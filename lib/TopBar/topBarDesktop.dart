import 'package:flutter/material.dart';
import 'package:my_portfolio/Utilities/constants.dart';
import 'package:my_portfolio/Utilities/theBoxes.dart';
import 'package:url_launcher/url_launcher.dart';

class TopBarDesktop extends StatefulWidget {
  const TopBarDesktop({Key? key}) : super(key: key);

  @override
  _TopBarDesktopState createState() => _TopBarDesktopState();
}

class _TopBarDesktopState extends State<TopBarDesktop> {
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
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(
                    5,
                  ),
                  child: Image(
                    fit: BoxFit.cover,
                    image: AssetImage('images/theWindRises.jpg'),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.amberAccent,
                  borderRadius: BorderRadius.circular(
                    5,
                  ),
                ),
                height: 350,
                width: double.infinity,
              ),
              Positioned(
                top: 40,
                left: 10,
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hi!',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 67,
                          // fontWeight: FontWeight.bold,
                          fontFamily: 'Tourney',
                        ),
                      ),
                      Text(
                        'I\'m Sagar!',
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 35,
                          // fontWeight: FontWeight.bold,
                          fontFamily: 'Tourney',
                        ),
                      ),
                      Text(
                        'Fellow Coder',
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 36,
                          // fontWeight: FontWeight.bold,
                          fontFamily: 'Tourney',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 10,
                left: 10,
                child: Container(
                  child: theRowNavigationBar(
                    _launchfacebook,
                    _launchInstagram,
                    _launchGitHub,
                    _launchLinkedIn,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
