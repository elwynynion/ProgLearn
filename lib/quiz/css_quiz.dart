import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

// Some Code Reference: https://github.com/skooltch84/Flutter-Multiple-Choice-Quiz

var finalScore = 0;
var questionNumber = 0;
var quiz = CssQuiz();

// Html Quiz Class all questions, choices, and answers.
class CssQuiz {
  var questions = [
    'What does CSS stand for?',
    'The following are 3 ways insert a style EXCEPT:',
    'Which if the following is the correct example of a CSS syntax:',
    'What symbol is used to indicate an ID selector?',
    'Fill in the blank to color the class “text” red: HTML:\n <p CLASS = “text”> Have a nice day! </p> CSS: __text {color: red;} ',
    'How to write a comment in CSS?',
    'Fill the blank to set the font to Arial:\n p { _______ : “Arial”;}',
    'It represents the design and layout of the site, and it consist of margins, borders, padding, and actual content.',
    'What properties are used to set the height and width of an element',
    'Fill in the blanks to set the paragraph with a dotted border: P {border-style: ________;}',
    'It is a property used to create space around the elements outside of any defined borders.',
    'Fill in the blank to set the size of the right padding into the half the value of the top padding\r Div { padding-top: 100px; padding-right: _____;}',
  ];

  var choices = [
    [
      'Calamansi Soy Sauce',
      'Cascade Sheet Style',
      'Cascading Style Sheets',
      'Computer Style Sheets'
    ],
    ['Inline CSS', 'Embedded CSS', 'External CSS', 'Markup CSS'],
    [
      'H1: color,blue,font-size,12 px',
      'H1 (color; blue , font-size; 12px)',
      '{h1 = Color: blue, Font-Size: 12px};',
      'H1 {color: blue; font-size: 12px;}'
    ],
    ['\$', '#', '.', '!'],
    ['.', '*', 'CLASS', '&'],
    [
      '//comment goes here',
      '<!--comment goes here-->',
      '/*comment goes here*/',
      '#comment goes here'
    ],
    ['Font', 'Font-family', 'Font-style', 'Font-friends'],
    ['Box Model', 'Box Content', 'Box', 'CSS Box'],
    [
      'Length and width',
      'Area and volume',
      'Height and width',
      'Circumference and radius'
    ],
    ['Solid', 'Double', 'Groove', 'Dotted'],
    ['Margin', 'Padding', 'Border', 'Height'],
    ['25px', '50px', '100px', '200px'],
  ];

  var correctAnswers = [
    'Cascading Style Sheets',
    'Markup CSS',
    'H1 {color: blue; font-size: 12px;}',
    '#',
    '.',
    '/*comment goes here*/',
    'Font-family',
    'Box Model',
    'Height and width',
    'Dotted',
    'Margin',
    '50px',
  ];
}

class CssQuizPage extends StatefulWidget {
  const CssQuizPage({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return CssQuizPageState();
  }
}

class CssQuizPageState extends State<CssQuizPage> {
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
            title: const Text('CSS Quiz',
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
                        fontSize: 24.0),
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
