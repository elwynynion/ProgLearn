import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:proglearn/home.dart';
import 'package:flutter/scheduler.dart' show timeDilation;
import 'package:flutter/services.dart';
import 'package:proglearn/settings/on_board.dart';

void main() => runApp(const HomeCourse());

// Home Course Cards
// This is the home screen of the app. It shows a card list of courses.
class HomeCourse extends StatelessWidget {
  const HomeCourse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Color.fromRGBO(255, 255, 255, 0.86),
      statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.dark,
    ));
    timeDilation = 1.5; // 1.0 means normal animation speed.

    return Scaffold(
      backgroundColor: Colors.white,
      body: homeCourseView(context),
    );
  }

  Widget homeCourseView(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Explore',
        home: ListView(
          padding: const EdgeInsets.all(15.0),
          children: [
            introText(context),
            const SizedBox(height: 20),
            htmlCard(context),
            const SizedBox(height: 20),
            cssCard(context),
            const SizedBox(height: 12),
            jsCard(context),
            const SizedBox(height: 12),
          ],
        ),
      );

  // Latest HTML CARD
  Widget htmlCard(BuildContext context) => Container(
        // elevation: 0.0,
        // semanticContainer: true,
        clipBehavior: Clip.antiAlias,
        // shape: RoundedRectangleBorder(
        //   borderRadius: BorderRadius.circular(24),
        // ),
        // color: HexColor("#fdf2da"),
        decoration: BoxDecoration(
          color: HexColor("#fdf2da"),
          borderRadius: BorderRadius.circular(24),
          border: Border.all(
            color: HexColor("#dddddd"),
            width: 1.0,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              offset: const Offset(0, 4),
              blurRadius: 10,
            ),
          ],
        ),
        child: InkWell(
          onTap: () {
            Navigator.of(context).push(routerHTML());
          },
          child: Column(
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                    child: Hero(
                      tag: '_html',
                      child: Image.asset(
                        'assets/covers/html.png',
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                  padding: const EdgeInsets.all(20),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: RichText(
                      text: const TextSpan(
                          text: 'Build with',
                          style: TextStyle(
                              fontFamily: 'SFdisplay',
                              color: Color.fromRGBO(29, 29, 31, 1),
                              fontSize: 45,
                              fontWeight: FontWeight.w200),
                          children: <TextSpan>[
                            TextSpan(
                              text: ' HTML',
                              style: TextStyle(
                                  fontFamily: 'SFdisplay',
                                  color: Color.fromRGBO(29, 29, 31, 1),
                                  fontSize: 40,
                                  fontWeight: FontWeight.w700),
                            )
                          ]),
                    ),
                  )),
            ],
          ),
        ),
      );

  // Welcome Card
  Widget welcomeCard(BuildContext context) => Container(
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          color: HexColor("#fdf2da"),
          borderRadius: BorderRadius.circular(24),
          border: Border.all(
            color: HexColor("#dddddd"),
            width: 1.0,
          ),
        ),
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const AppOnBoard()),
            );
          },
          child: Column(
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                      bottomLeft: Radius.circular(24),
                      bottomRight: Radius.circular(24),
                    ),
                    child: Hero(
                      tag: '_welcome',
                      child: Image.asset(
                        'assets/covers/welcome.png',
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );

  // Latest CSS CARD
  Widget cssCard(BuildContext context) => Container(
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          color: HexColor("#fdf2da"),
          borderRadius: BorderRadius.circular(24),
          border: Border.all(
            color: HexColor("#dddddd"),
            width: 1.0,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              offset: const Offset(0, 4),
              blurRadius: 10,
            ),
          ],
        ),
        child: InkWell(
          onTap: () {
            Navigator.of(context).push(routerCSS());
          },
          child: Column(
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                    child: Hero(
                      tag: '_CSS',
                      child: Image.asset(
                        'assets/covers/css.png',
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                  padding: const EdgeInsets.all(20),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: RichText(
                      text: const TextSpan(
                          text: 'Design with',
                          style: TextStyle(
                              fontFamily: 'SFdisplay',
                              color: Color.fromRGBO(29, 29, 31, 1),
                              fontSize: 45,
                              fontWeight: FontWeight.w200),
                          children: <TextSpan>[
                            TextSpan(
                              text: ' CSS',
                              style: TextStyle(
                                  fontFamily: 'SFdisplay',
                                  color: Color.fromRGBO(29, 29, 31, 1),
                                  fontSize: 40,
                                  fontWeight: FontWeight.w700),
                            )
                          ]),
                    ),
                  )),
            ],
          ),
        ),
      );

  // Latest JS CARD
  Widget jsCard(BuildContext context) => Container(
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          color: HexColor("#fdf1da"),
          borderRadius: BorderRadius.circular(24),
          border: Border.all(
            color: HexColor("#dddddd"),
            width: 1.0,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              offset: const Offset(0, 4),
              blurRadius: 10,
            ),
          ],
        ),
        child: InkWell(
          onTap: () {
            Navigator.of(context).push(routerJS());
          },
          child: Column(
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                    child: Hero(
                      tag: '_js',
                      child: Image.asset(
                        'assets/covers/js.png',
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                  padding: const EdgeInsets.all(20),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: RichText(
                      text: const TextSpan(
                          text: 'Program with',
                          style: TextStyle(
                              fontFamily: 'SFdisplay',
                              color: Color.fromRGBO(29, 29, 31, 1),
                              fontSize: 45,
                              fontWeight: FontWeight.w200),
                          children: <TextSpan>[
                            TextSpan(
                              text: ' JavaScript',
                              style: TextStyle(
                                  fontFamily: 'SFdisplay',
                                  color: Color.fromRGBO(29, 29, 31, 1),
                                  fontSize: 40,
                                  fontWeight: FontWeight.w700),
                            )
                          ]),
                    ),
                  )),
            ],
          ),
        ),
      );

  // Home Page Title 'Explore'
  Widget introText(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const <Widget>[
          SizedBox(height: 40),
          // margin
          Padding(
            padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
            child: Text(
              "Explore",
              style: TextStyle(
                  color: Color.fromRGBO(60, 60, 60, 1),
                  fontFamily: 'SFdisplay',
                  fontWeight: FontWeight.w800,
                  fontSize: 40.0,
                  overflow: TextOverflow.fade,
                  decoration: TextDecoration.none),
            ),
          ),
        ],
      );
}
