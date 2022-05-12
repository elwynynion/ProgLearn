import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

// Some Code Reference: https://github.com/skooltch84/Flutter-Multiple-Choice-Quiz

var finalScore = 0;
var questionNumber = 0;
var quiz = JsQuiz();

// Html Quiz Class all questions, choices, and answers.
class JsQuiz {
  var questions = [
    'What is the output of this code?\n const n = 2; For (let i = 1; I <= n; i++) { Console.log(‘I love ProgLearn.’); }',
    'Which tag is the JavaScript code inserted in HTML?',
    'It is a block of JavaScript code, that can be executed when "called" for',
    'Where can you put the script tags in the HTML document?',
    'The following are advantages of using external JavaScript EXCEPT:',
    'Fill in the blank to reference the external JavaScript codes:\n <script ___ ="myScript.js"></script>',
    'It is a dynamic computer programming language, commonly used in webpages, that allows client-side script to interact with the user.',
    'What keyword do you use to declare a variable?',
    'What will be the output of this statement?\n let x = "16" + "17";',
    'What operator in JavaScript muliplies numbers?',
    'What kind of statement are used to perform different actions based on different conditions',
    'In a switch statement, what will happen if there is no match throughout the code blocks?'
  ];

  var choices = [
    [
      'i love proglearn\ni love proglearn',
      'i love proglearn',
      'I love proglearn',
      'I love ProgLearn\nI love ProgLearn'
    ],
    ['<script> </script>', '<style> </style>', '<js> </js>', '<java> </java>'],
    ['Script', 'Function', 'Event', 'Code'],
    [
      'In the <head> only',
      'In the <body> only',
      'Both in the <head> and <body>',
      'Neither'
    ],
    [
      'It seperates HTML and code',
      'It makes HTML and JavaScript\neasier to read and maintain',
      'It may get lost and deleted',
      'Cached JavaScript files can\nspeed up page loads'
    ],
    ['scr', 'src', 'url', 'Js'],
    ['HTML', 'CSS', 'Java', 'JavaScript'],
    ['var', 'variable', 'x', 'v'],
    ['"33"', '1617', '16+17', '33'],
    ['x', '+', '-', '*'],
    ['Conditional statements', 'Action statements', 'Function', 'Conditioner statement'],
    ['The code will return in an error', 'The code will display\nall the cases', 'The default block\nis executed', 'Nothing happens']
  ];

  var correctAnswers = [
    'I love ProgLearn\nI love ProgLearn',
    '<script> </script>',
    'Function',
    'Both in the <head> and <body>',
    'It may get lost and deleted',
    'src',
    'JavaScript',
    'var',
    '1617',
    '*',
    'Conditional statements',
    'The default block\nis executed'
  ];
}

class JsQuizPage extends StatefulWidget {
  const JsQuizPage({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return JsQuizPageState();
  }
}

class JsQuizPageState extends State<JsQuizPage> {
  // button builder list

  List<Widget> buttonList() {
    List<Widget> buttonList = [];
    for (var item in quiz.choices[questionNumber]) {
      buttonList.add(Column(
        children: <Widget>[
          const Padding(padding: EdgeInsets.all(5.0)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              OutlinedButton(
                onPressed: () {
                  setState(() {
                    if (quiz.correctAnswers[questionNumber] == item) {
                      finalScore++;
                    }
                    updateQuestion();
                  });
                },
                style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.all(15.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18))),
                child: Text(item,
                    style: const TextStyle(
                        fontFamily: 'SFdisplay',
                        color: Color.fromRGBO(29, 29, 31, 1),
                        fontWeight: FontWeight.w400,
                        fontSize: 15.0)),
              )
            ],
          ),
          const Padding(padding: EdgeInsets.all(5.0)),
        ],
      ));
    }
    return buttonList;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            leading: IconButton(
              onPressed: () {
                resetQuiz();
              },
              icon: const Icon(CupertinoIcons.arrow_left,
                  color: CupertinoColors.black),
            ),
            backgroundColor: Colors.white,
            elevation: 0.0,
            title: const Text('JS Quiz',
                style: TextStyle(
                    fontFamily: 'SFdisplay',
                    color: Color.fromRGBO(29, 29, 31, 1),
                    fontWeight: FontWeight.w400)),
            centerTitle: true,
          ),
          body: Container(
            height: double.infinity,
            width: double.infinity,
            padding: const EdgeInsets.all(15.0),
            alignment: Alignment.topCenter,
            child: Column(
              children: <Widget>[
                const Padding(padding: EdgeInsets.all(0.0)),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Question ${questionNumber + 1}/${quiz.questions.length}",
                    style: const TextStyle(
                        fontFamily: 'SFdisplay',
                        color: Color.fromRGBO(168, 92, 249, 1),
                        fontWeight: FontWeight.w700,
                        fontSize: 25.0),
                    textAlign: TextAlign.left,
                  ),
                ),

                const Padding(padding: EdgeInsets.only(top: 40.0)),

                // Question
                Text(
                  quiz.questions[questionNumber],
                  style: const TextStyle(
                      fontFamily: 'SFdisplay',
                      color: Color.fromRGBO(29, 29, 31, 1),
                      fontWeight: FontWeight.w600,
                      fontSize: 20.0),
                  textAlign: TextAlign.center,
                ),

                const Padding(padding: EdgeInsets.all(15.0)),
                Expanded(
                  child: ListView.builder(
                    itemCount: 1,
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        children: buttonList(),
                      );
                    },
                  ),
                ),

                CupertinoButton(
                  onPressed: () {
                    resetQuiz();
                  },
                  color: const Color.fromARGB(255, 232, 89, 86),
                  borderRadius: BorderRadius.circular(30.0),
                  child: const Text(
                    "Quit",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'SFdisplay',
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                        letterSpacing: 1.0),
                  ),
                ),
              ],
            ),
          ),
        ));
  }

  void resetQuiz() {
    setState(() {
      Navigator.pop(context);
      finalScore = 0;
      questionNumber = 0;
    });
  }

  void updateQuestion() {
    setState(() {
      if (questionNumber == quiz.questions.length - 1) {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => Summary(
                      score: finalScore,
                    )));
      } else {
        questionNumber++;
      }
    });
  }
}

class Summary extends StatelessWidget {
  final int? score;
  const Summary({Key? key, @required this.score}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'assets/trophy.png',
                width: 200.0,
              ),
              const Padding(padding: EdgeInsets.all(7.0)),
              const Text('Congratulations!',
                  style: TextStyle(
                      fontFamily: 'SFdisplay',
                      color: Color.fromRGBO(29, 29, 31, 1),
                      fontWeight: FontWeight.w600,
                      fontSize: 25.0)),
              const Padding(padding: EdgeInsets.all(20.0)),
              const Text(
                "YOUR SCORE",
                style: TextStyle(
                    fontFamily: 'SFtext',
                    color: Color.fromRGBO(29, 29, 31, 1),
                    fontWeight: FontWeight.w400,
                    fontSize: 20.0),
                textAlign: TextAlign.center,
              ),
              const Padding(padding: EdgeInsets.all(5.0)),
              Text(
                "$score pts",
                style: const TextStyle(
                    fontFamily: 'SFdisplay',
                    color: Color.fromRGBO(29, 29, 31, 1),
                    fontWeight: FontWeight.w700,
                    fontSize: 35),
                textAlign: TextAlign.center,
              ),
              const Padding(padding: EdgeInsets.all(20.0)),
              CupertinoButton(
                onPressed: () {
                  questionNumber = 0;
                  finalScore = 0;
                  Navigator.pop(context);
                },
                color: const Color.fromRGBO(168, 92, 249, 1),
                borderRadius: BorderRadius.circular(30.0),
                child: const Text(
                  "Reset",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'SFdisplay',
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      letterSpacing: 1.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
