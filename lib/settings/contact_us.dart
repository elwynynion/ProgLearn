import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/scheduler.dart' show timeDilation;
import 'package:flutter/services.dart';
import 'package:flutter/cupertino.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(const ContactUs());

// Home Course Cards
// This is the home screen of the app. It shows a card list of courses.
class ContactUs extends StatelessWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Color.fromRGBO(255, 255, 255, 0.86),
      statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.dark,
    ));
    timeDilation = 1.5; // 1.0 means normal animation speed.

    return Scaffold(
      backgroundColor: HexColor("#ffffff"),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(CupertinoIcons.arrow_left,
              color: CupertinoColors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
      ),
      body: htuView(context),
    );
  }

  Widget htuView(BuildContext context) => MaterialApp(
        theme: ThemeData(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          hoverColor: Colors.transparent,
        ),
        title: 'Contact Info',
        debugShowCheckedModeBanner: false,
        home: ListView(
          padding: const EdgeInsets.all(15.0),
          children: [
            const Padding(padding: EdgeInsets.only(left: 15.0, right: 15.0)),

            // Title
            const Text(
              'Contact Info',
              style: TextStyle(
                  fontFamily: 'SFdisplay',
                  color: Color.fromRGBO(29, 29, 31, 1),
                  fontWeight: FontWeight.w600,
                  fontSize: 30,
                  decoration: TextDecoration.none),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 20.0),

            ListTile(
              // leading image
              leading: Image.asset(
                'assets/facebook.png',
                width: 30.0,
                height: 30.0,
              ),
              horizontalTitleGap: 5.0,
              title: const Text(
                '@fb.proglearn',
                style: TextStyle(
                  fontSize: 16.0,
                  fontFamily: 'SFdisplay',
                  color: Color.fromRGBO(29, 29, 31, 1),
                  fontWeight: FontWeight.w400,
                ),
              ),
              onTap: () {
                launch('https://www.facebook.com/fb.proglearn');
              },
            ),

            const SizedBox(height: 6.0),

            ListTile(
              // leading image
              leading: Image.asset(
                'assets/gmail.png',
                width: 30.0,
                height: 30.0,
              ),
              horizontalTitleGap: 5.0,
              title: const Text(
                'intelliware.company@gmail.com',
                style: TextStyle(
                  fontSize: 16.0,
                  fontFamily: 'SFdisplay',
                  color: Color.fromRGBO(29, 29, 31, 1),
                  fontWeight: FontWeight.w400,
                ),
              ),
              onTap: () {
                launch('mailto:intelliware.company@gmail.com');
              },
            ),

            const SizedBox(height: 6.0),

            ListTile(
              // leading image
              leading: Image.asset(
                'assets/phone.png',
                width: 30.0,
                height: 30.0,
              ),
              horizontalTitleGap: 5.0,
              title: const Text(
                '+639297872930',
                style: TextStyle(
                  fontSize: 16.0,
                  fontFamily: 'SFdisplay',
                  color: Color.fromRGBO(29, 29, 31, 1),
                  fontWeight: FontWeight.w400,
                ),
              ),
              onTap: () {
                launch('tel:+639297872930');
              },
            ),
          ],
        ),
      );
}

launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
