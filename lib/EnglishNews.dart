import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _url = Uri.parse('https://flutter.dev');

class EnglishWidget extends StatelessWidget {
  EnglishWidget({Key? key}) : super(key: key);
  List<String> urlList = [
    "yt.com",
    "fb.com",
    "yt.com",
    "fb.com",
    "yt.com",
    "fb.com",
  ];
  @override
  Widget build(BuildContext context) {
    // launchUrl(_url);
    return Container();
  }

  canLaunch(String url) {}
}

class HindiWidget extends StatelessWidget {
  const HindiWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height1 = MediaQuery.of(context).size.height;
    return Container(
      height: height1,
      color: Colors.blue,
      child: Row(),
    );
  }
}
