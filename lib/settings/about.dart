import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/scheduler.dart' show timeDilation;
import 'package:flutter/services.dart';
import 'package:flutter/cupertino.dart';

void main() => runApp(const AboutApp());

// Home Course Cards
// This is the home screen of the app. It shows a card list of courses.
class AboutApp extends StatelessWidget {
  const AboutApp({Key? key}) : super(key: key);

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
        title: 'About Proglearn',
        debugShowCheckedModeBanner: false,
        home: ListView(
          padding: const EdgeInsets.all(15.0),
          children: [
            const Padding(padding: EdgeInsets.only(left: 15.0, right: 15.0)),

            // App logo by Elwyn
            Image.asset(
              'assets/appIconD.png',
              width: 100.0,
              height: 100.0,
            ),

            const SizedBox(height: 20),

            // Title
            Text(
              'ProgLearn',
              style: TextStyle(
                  fontFamily: 'SFdisplay',
                  color: HexColor('#6ba174'),
                  fontWeight: FontWeight.w600,
                  fontSize: 30,
                  decoration: TextDecoration.none),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 10.0),

            const Text('App for beginners',
                style: TextStyle(
                    fontFamily: 'SFdisplay',
                    color: Color.fromRGBO(29, 29, 31, 1),
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    decoration: TextDecoration.none),
                textAlign: TextAlign.center),

            const SizedBox(height: 5.0),

            Text('Version 2.0.5',
                style: TextStyle(
                    fontFamily: 'SFdisplay',
                    color: HexColor("C1A3A3"),
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    decoration: TextDecoration.none),
                textAlign: TextAlign.center),

            const SizedBox(height: 15.0),

            const Text('About',
                style: TextStyle(
                    fontFamily: 'SFdisplay',
                    color: Color.fromRGBO(29, 29, 31, 1),
                    fontWeight: FontWeight.w600,
                    fontSize: 24.0,
                    decoration: TextDecoration.none),
                textAlign: TextAlign.left),

            const SizedBox(height: 15.0),

            ListTile(
              // leading image
              leading: Image.asset(
                'assets/documents.png',
                width: 50.0,
                height: 50.0,
              ),
              title: const Text(
                'Straight foward content for your needs.',
                style: TextStyle(
                  fontSize: 20.0,
                  fontFamily: 'SFdisplay',
                  color: Color.fromRGBO(29, 29, 31, 1),
                  fontWeight: FontWeight.w600,
                ),
              ),
              onTap: () {
                // print('sheep');
              },
            ),
            Text(
              'It\'s easy and quick to pick up new skills. ProgLearn delivers simple and convenient learning materials for your need.',
              style: TextStyle(
                  fontSize: 15.0,
                  fontFamily: 'SFDisplay',
                  color: HexColor('886F6F'),
                  fontWeight: FontWeight.w400,
                  decoration: TextDecoration.none),
            ),

            const SizedBox(height: 15.0),

            ListTile(
              // leading image
              leading: Image.asset(
                'assets/award.png',
                width: 50.0,
                height: 50.0,
              ),
              title: const Text(
                'Test your knowledge.',
                style: TextStyle(
                  fontSize: 20.0,
                  fontFamily: 'SFdisplay',
                  color: Color.fromRGBO(29, 29, 31, 1),
                  fontWeight: FontWeight.w600,
                ),
              ),
              onTap: () {
                // print('sheep');
              },
            ),
            Text(
              'Answer quiz questions to practice all what you\'ve learned so far. Learn the fun way and challenge yourself with Proglearn.',
              style: TextStyle(
                  fontSize: 15.0,
                  fontFamily: 'SFDisplay',
                  color: HexColor('886F6F'),
                  fontWeight: FontWeight.w400,
                  decoration: TextDecoration.none),
            ),

            const SizedBox(height: 15.0),

            ListTile(
              // leading image
              leading: Image.asset(
                'assets/snap.png',
                width: 50.0,
                height: 50.0,
              ),
              title: const Text(
                'Fast as snap of your finger',
                style: TextStyle(
                  fontSize: 20.0,
                  fontFamily: 'SFdisplay',
                  color: Color.fromRGBO(29, 29, 31, 1),
                  fontWeight: FontWeight.w600,
                ),
              ),
              onTap: () {
                // print('sheep');
              },
            ),
            Text(
              'Learn web development anytime, anywhere. ProgLearn is the fastest way to learn web development. Enjoy the simplicity of the app.',
              style: TextStyle(
                  fontSize: 15.0,
                  fontFamily: 'SFDisplay',
                  color: HexColor('886F6F'),
                  fontWeight: FontWeight.w400,
                  decoration: TextDecoration.none),
            ),
          ],
        ),
      );
}
