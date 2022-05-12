import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/scheduler.dart' show timeDilation;
import 'package:flutter/services.dart';
import 'package:flutter/cupertino.dart';

void main() => runApp(const Developers());

// Home Course Cards
// This is the home screen of the app. It shows a card list of courses.
class Developers extends StatelessWidget {
  const Developers({Key? key}) : super(key: key);

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
      body: devView(context),
    );
  }

  Widget devView(BuildContext context) => MaterialApp(
        theme: ThemeData(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          hoverColor: Colors.transparent,
        ),
        debugShowCheckedModeBanner: false,
        title: 'Developers',
        home: mainView(context),
      );

  Widget mainView(BuildContext context) => Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          padding: const EdgeInsets.all(15.0),
          children: [
            const Padding(padding: EdgeInsets.only(left: 15.0, right: 15.0)),

            // Illustration by Joanah Blanco
            Image.asset(
              'assets/developers_illustration.png',
              fit: BoxFit.fitWidth,
            ),

            // Title
            const Text(
              'The Developers',
              style: TextStyle(
                  fontFamily: 'SFdisplay',
                  color: Color.fromRGBO(29, 29, 31, 1),
                  fontWeight: FontWeight.w600,
                  fontSize: 30),
              textAlign: TextAlign.center,
            ),

            // Programmer
            const SizedBox(height: 20),

            const Text(
              'Programmer',
              style: TextStyle(
                  fontFamily: 'SFdisplay',
                  color: Color.fromRGBO(29, 29, 31, 1),
                  fontWeight: FontWeight.w500,
                  fontSize: 17.0),
            ),

            const SizedBox(height: 15.0),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Image.asset(
                  'assets/team/elwyn-min.png',
                  height: 47.0,
                ),
                const SizedBox(width: 14.0),
                const Text(
                  'Elwyn Ynion',
                  style: TextStyle(
                    fontFamily: 'SFdisplay',
                    color: Color.fromRGBO(29, 29, 31, 1),
                    fontSize: 15.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),

            // Designer
            const SizedBox(height: 20.0),

            const Text(
              'Designer',
              style: TextStyle(
                  fontFamily: 'SFdisplay',
                  color: Color.fromRGBO(29, 29, 31, 1),
                  fontWeight: FontWeight.w500,
                  fontSize: 17.0),
            ),

            const SizedBox(height: 15.0),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Image.asset(
                  'assets/team/blanco-min.png',
                  height: 47.0,
                ),
                const SizedBox(width: 14.0),
                const Text(
                  'Joanah Blanco',
                  style: TextStyle(
                    fontFamily: 'SFdisplay',
                    color: Color.fromRGBO(29, 29, 31, 1),
                    fontSize: 16.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),

            // Researcher
            const SizedBox(height: 20.0),

            const Text(
              'Researcher',
              style: TextStyle(
                  fontFamily: 'SFdisplay',
                  color: Color.fromRGBO(29, 29, 31, 1),
                  fontWeight: FontWeight.w500,
                  fontSize: 17.0),
            ),

            const SizedBox(height: 15.0),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Image.asset(
                  'assets/team/basino-min.png',
                  height: 47.0,
                ),
                const SizedBox(width: 14.0),
                const Text(
                  'Alyssa Basiño',
                  style: TextStyle(
                    fontFamily: 'SFdisplay',
                    color: Color.fromRGBO(29, 29, 31, 1),
                    fontSize: 15.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10.0),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Image.asset(
                  'assets/team/bayot-min.png',
                  height: 47.0,
                ),
                const SizedBox(width: 14.0),
                const Text(
                  'Beronica Bayot',
                  style: TextStyle(
                    fontFamily: 'SFdisplay',
                    color: Color.fromRGBO(29, 29, 31, 1),
                    fontSize: 15.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10.0),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Image.asset(
                  'assets/team/sison-min.png',
                  height: 47.0,
                ),
                const SizedBox(width: 14.0),
                const Text(
                  'Angelique Sison',
                  style: TextStyle(
                    fontFamily: 'SFdisplay',
                    color: Color.fromRGBO(29, 29, 31, 1),
                    fontSize: 15.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10.0),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Image.asset(
                  'assets/team/brioso-min.png',
                  height: 47.0,
                ),
                const SizedBox(width: 14.0),
                const Text(
                  'Ronie Brioso',
                  style: TextStyle(
                    fontFamily: 'SFdisplay',
                    color: Color.fromRGBO(29, 29, 31, 1),
                    fontSize: 15.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10.0),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Image.asset(
                  'assets/team/badua-min.png',
                  height: 47.0,
                ),
                const SizedBox(width: 14.0),
                const Text(
                  'Mark Ivan Badua',
                  style: TextStyle(
                    fontFamily: 'SFdisplay',
                    color: Color.fromRGBO(29, 29, 31, 1),
                    fontSize: 15.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10.0),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Image.asset(
                  'assets/team/ibarrola-min.png',
                  height: 47.0,
                ),
                const SizedBox(width: 14.0),
                const Text(
                  'John Ibarolla',
                  style: TextStyle(
                    fontFamily: 'SFdisplay',
                    color: Color.fromRGBO(29, 29, 31, 1),
                    fontSize: 15.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10.0),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Image.asset(
                  'assets/team/pareja-min.png',
                  height: 47.0,
                ),
                const SizedBox(width: 14.0),
                const Text(
                  'Ken Pareja',
                  style: TextStyle(
                    fontFamily: 'SFdisplay',
                    color: Color.fromRGBO(29, 29, 31, 1),
                    fontSize: 15.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10.0),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Image.asset(
                  'assets/team/ramos-min.png',
                  height: 47.0,
                ),
                const SizedBox(width: 14.0),
                const Text(
                  'Stephen Von Ramos',
                  style: TextStyle(
                    fontFamily: 'SFdisplay',
                    color: Color.fromRGBO(29, 29, 31, 1),
                    fontSize: 15.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10.0),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Image.asset(
                  'assets/team/tumampo-min.png',
                  height: 47.0,
                ),
                const SizedBox(width: 14.0),
                const Text(
                  'Dave Tumampo',
                  style: TextStyle(
                    fontFamily: 'SFdisplay',
                    color: Color.fromRGBO(29, 29, 31, 1),
                    fontSize: 15.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ],
        ),
      );
}
