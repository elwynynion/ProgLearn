import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:proglearn/quiz/html_quiz.dart';
import 'package:proglearn/quiz/css_quiz.dart';
import 'package:proglearn/quiz/js_quiz.dart';

void main() => runApp(
      const HomeQuiz(),
    );

class HomeQuiz extends StatefulWidget {
  const HomeQuiz({Key? key}) : super(key: key);

  @override
  State<HomeQuiz> createState() => _HomeQuizState();
}

class _HomeQuizState extends State<HomeQuiz> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz',
      theme: ThemeData(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        hoverColor: Colors.transparent,
      ),
      debugShowCheckedModeBanner: false,
      home: const HomeQuizHome(),
    );
  }
}

class HomeQuizHome extends StatefulWidget {
  const HomeQuizHome({Key? key}) : super(key: key);

  @override
  State<HomeQuizHome> createState() => _HomeQuizHomeState();
}

class _HomeQuizHomeState extends State<HomeQuizHome> {
  // This is htmlQuiz from lib\quiz\html_quiz.dart
  void htmlQuiz() {
    setState(() {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const HtmlQuizPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#ffffff"),
      // create view for the quiz
      body: ListView(
        padding: const EdgeInsets.all(15.0),
        children: <Widget>[
          introTextQuiz(context),
          gridQuiz(context),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget introTextQuiz(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const <Widget>[
          SizedBox(height: 40),
          // margin
          Padding(
            padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
            child: Text(
              "Quiz",
              style: TextStyle(
                color: Color.fromRGBO(60, 60, 60, 1),
                fontFamily: 'SFdisplay',
                fontWeight: FontWeight.w800,
                fontSize: 40.0,
                overflow: TextOverflow.fade,
              ),
            ),
          ),
        ],
      );

  Widget gridQuiz(BuildContext context) => Container(
        padding: const EdgeInsets.only(top: 22.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              padding:
                  const EdgeInsets.only(bottom: 10.0, right: 5.0, left: 5.0),
              child: Wrap(
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                alignment: WrapAlignment.center,
                spacing: 10.0,
                runSpacing: 10.0,
                children: [
                  // html quiz
                  Container(
                    width: 130,
                    height: 130,
                    // add padding
                    padding: const EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: HexColor("#dddddd"),
                        width: 1.5,
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(20.0),
                      ),
                    ),
                    child: InkWell(
                      onTap: () {
                        // htmlQuiz();
                        Navigator.of(context).push(routerHTMLQuiz());
                      },
                      child: Column(
                        children: [
                          Expanded(
                            child: Center(
                              child: Image.asset(
                                'assets/htmlicon.png',
                                width: 110,
                                height: 110,
                              ),
                            ),
                          ),
                          const Center(
                            child: Text(
                              'HTML',
                              style: TextStyle(
                                fontFamily: 'SFdisplay',
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(60, 60, 60, 1),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                  // css quiz
                  Container(
                    width: 130,
                    height: 130,
                    // add padding
                    padding: const EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: HexColor("#dddddd"),
                        width: 1.5,
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(20.0),
                      ),
                    ),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(routerCSSQuiz());
                      },
                      child: Column(
                        children: [
                          Expanded(
                            child: Center(
                              child: Image.asset(
                                'assets/cssicon.png',
                                width: 110,
                                height: 110,
                              ),
                            ),
                          ),
                          const Center(
                            child: Text(
                              'CSS',
                              style: TextStyle(
                                fontFamily: 'SFdisplay',
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(60, 60, 60, 1),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              padding:
                  const EdgeInsets.only(bottom: 10.0, right: 5.0, left: 5.0),
              child: Wrap(
                alignment: WrapAlignment.center,
                spacing: 10.0,
                runSpacing: 10.0,
                children: [
                  // javascript quiz
                  Container(
                    width: 130,
                    height: 130,
                    // add padding
                    padding: const EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: HexColor("#dddddd"),
                        width: 1.5,
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(20.0),
                      ),
                    ),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(routerJSQuiz());
                      },
                      child: Column(
                        children: [
                          Expanded(
                            child: Center(
                              child: Image.asset(
                                'assets/jsicon.png',
                                width: 110,
                                height: 110,
                              ),
                            ),
                          ),
                          const Center(
                            child: Text(
                              'JS',
                              style: TextStyle(
                                fontFamily: 'SFdisplay',
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(60, 60, 60, 1),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                  // special quiz
                  // removed special quiz for now
                  // Container(
                  //   width: 130,
                  //   height: 130,
                  //   padding: const EdgeInsets.only(top: 15, bottom: 10),
                  //   decoration: BoxDecoration(
                  //     border: Border.all(
                  //       color: HexColor("#dddddd"),
                  //       width: 1.5,
                  //     ),
                  //     borderRadius: const BorderRadius.all(
                  //       Radius.circular(20.0),
                  //     ),
                  //   ),
                  //   child: InkWell(
                  //     onTap: () {
                  //       // Navigator.of(context).push(routerHTML());
                  //     },
                  //     child: Column(
                  //       children: [
                  //         Expanded(
                  //           child: Center(
                  //             child: Image.asset(
                  //               'assets/special.png',
                  //               width: 120,
                  //               height: 120,
                  //             ),
                  //           ),
                  //         ),
                  //         const SizedBox(
                  //           height: 10,
                  //         ),
                  //         const Center(
                  //           child: Text(
                  //             'Special\r Quiz',
                  //             textAlign: TextAlign.center,
                  //             style: TextStyle(
                  //               fontFamily: 'SFdisplay',
                  //               fontSize: 20,
                  //               fontWeight: FontWeight.w500,
                  //               color: Color.fromRGBO(60, 60, 60, 1),
                  //             ),
                  //           ),
                  //         ),
                  //         const SizedBox(
                  //           height: 10,
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
          ],
        ),
      );
}

Route routerHTMLQuiz() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) =>
        const HtmlQuizPage(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

Route routerCSSQuiz() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) =>
        const CssQuizPage(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

Route routerJSQuiz() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const JsQuizPage(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
