import 'package:url_launcher/url_launcher.dart';

const url = 'www.youtube.com';

void launchUrl() async => await canLaunch(url) ? launch(url) : throw 'pp gone';
