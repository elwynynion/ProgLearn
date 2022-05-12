import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/scheduler.dart' show timeDilation;
import 'package:flutter/services.dart';
import 'package:flutter/cupertino.dart';

void main() => runApp(const HowToUse());

// Home Course Cards
// This is the home screen of the app. It shows a card list of courses.
class HowToUse extends StatelessWidget {
  const HowToUse({Key? key}) : super(key: key);

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
        title: const Text('Guides',
            style: TextStyle(
                fontFamily: 'SFdisplay',
                color: Color.fromRGBO(29, 29, 31, 1),
                fontWeight: FontWeight.w400)),
        centerTitle: true,
      ),
      body: htuView(context),
    );
  }

  Widget htuView(BuildContext context) => MaterialApp(
        title: 'How to Use',
        debugShowCheckedModeBanner: false,
        home: ListView(
          padding: const EdgeInsets.all(15.0),
          children: [
            const Padding(padding: EdgeInsets.only(left: 15.0, right: 15.0)),

            // Home
            Image.asset(
              'assets/on_boarding/home.png',
              fit: BoxFit.fitWidth,
            ),
            RichText(
              text: const TextSpan(
                children: <TextSpan>[
                  TextSpan(
                      text: 'Home ',
                      style: TextStyle(
                          fontFamily: 'SFdisplay',
                          color: Color.fromRGBO(29, 29, 31, 1),
                          fontSize: 17.0,
                          fontWeight: FontWeight.bold)),
                  TextSpan(
                      text:
                          'The cards on the home screen are the courses about web development. You can choose to explore the courses by clicking on the cards.',
                      style: TextStyle(
                        fontFamily: 'SFdisplay',
                        color: Color.fromRGBO(29, 29, 31, 1),
                        fontSize: 15.0,
                      )),
                ],
              ),
            ),

            const SizedBox(height: 25.0),

            // Quiz
            Image.asset(
              'assets/on_boarding/quiz.png',
              fit: BoxFit.fitWidth,
            ),
            RichText(
              text: const TextSpan(
                children: <TextSpan>[
                  TextSpan(
                      text: 'Quiz ',
                      style: TextStyle(
                          fontFamily: 'SFdisplay',
                          color: Color.fromRGBO(29, 29, 31, 1),
                          fontSize: 17.0,
                          fontWeight: FontWeight.bold)),
                  TextSpan(
                      text:
                          'The quiz page contains the quizes about the topics from the courses. You can choose to take the quiz by clicking on the quiz card.',
                      style: TextStyle(
                        fontFamily: 'SFdisplay',
                        color: Color.fromRGBO(29, 29, 31, 1),
                        fontSize: 15.0,
                      )),
                ],
              ),
            ),

            const SizedBox(height: 25.0),

            // Settings
            Image.asset(
              'assets/on_boarding/settings.png',
              fit: BoxFit.fitWidth,
            ),
            RichText(
              text: const TextSpan(
                children: <TextSpan>[
                  TextSpan(
                      text: 'Settings ',
                      style: TextStyle(
                          fontFamily: 'SFdisplay',
                          color: Color.fromRGBO(29, 29, 31, 1),
                          fontSize: 17.0,
                          fontWeight: FontWeight.bold)),
                  TextSpan(
                      text:
                          'The settings contains information about the app, the developers, and how to contact them.',
                      style: TextStyle(
                        fontFamily: 'SFdisplay',
                        color: Color.fromRGBO(29, 29, 31, 1),
                        fontSize: 15.0,
                      )),
                ],
              ),
            ),

            const SizedBox(height: 25.0),
          ],
        ),
      );
}
