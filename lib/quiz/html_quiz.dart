import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

// Some Code Reference: https://github.com/skooltch84/Flutter-Multiple-Choice-Quiz

var finalScore = 0;
var questionNumber = 0;
var quiz = HtmlQuiz();

// Html Quiz Class all questions, choices, and answers.
class HtmlQuiz {
  var questions = [
    'What does HTML stand for?',
    'This element defines the document’s body',
    'What is the missing element below?\n <___> Hello world! </p>',
    'Fill in the missing element to make the text italicized\n <p> welcome to  <__> ProgLearn </__> </p>',
    'How many levels of heading does HTML have?',
    'It is an element that is not displayed on the browser, but it helps add description, reminders, and other notes.',
    'What are HTML documents made of?',
    'Which element is used to insert an image in the HTML document?',
    'What kind of tags do you use to make a row in a table?',
    'What kind of list starts with a <UL> tag?',
    'It is a block-level element that is often used as a container for other HTML elements.',
    'It is an inline element that is used as a container for some text.'
  ];

  var choices = [
    [
      'Hyper Text Markup Language',
      'How to Make Lasagna',
      'Hotdog, Turon, Mangga at Lugaw',
      'Hyper Text Meta Language'
    ],
    ['<body>', '<title>', '<!DOCTYPE>', 'HTML'],
    ['br', 'a', '/p', 'p'],
    ['strong', 'small', 'i', 'ins'],
    ['10', '6', '2', '5'],
    ['Comment', 'Reminder', 'Desc', 'Note'],
    ['numbers', 'magic of friendship', 'elements', 'chakra'],
    ['<image>', '<IMG>', '<pic>', '<png>'],
    ['<td></td>', '<tr></tr>', '<row></row>', '<rw></rw>'],
    ['Ordered list', 'List', 'Unordered list', 'Unknown list'],
    ['<DIV>', '<SPAN>', '<P>', '<BODY>'],
    ['<STRONG>', '<SUB>', '<SPAN>', '<BR>']
  ];

  var correctAnswers = [
    'Hypet Text Markup Language',
    '<body>',
    'p',
    'i',
    '6',
    'Comment',
    'elements',
    '<IMG>',
    '<tr></tr>',
    'Unordered list',
    '<DIV>',
    '<SPAN>'
  ];
}

class HtmlQuizPage extends StatefulWidget {
  const HtmlQuizPage({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return HtmlQuizPageState();
  }
}

class HtmlQuizPageState extends State<HtmlQuizPage> {
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
            title: const Text('HTML Quiz',
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
        // body: Column(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: <Widget>[
        //     Text(
        //       "Final Score: $score",
        //       style: const TextStyle(fontSize: 35.0),
        //     ),
        //     const Padding(padding: EdgeInsets.all(30.0)),
        //     MaterialButton(
        //       color: Colors.red,
        //       onPressed: () {
        //         questionNumber = 0;
        //         finalScore = 0;
        //         Navigator.pop(context);
        //       },
        //       child: const Text(
        //         "Reset Quiz",
        //         style: TextStyle(fontSize: 20.0, color: Colors.white),
        //       ),
        //     )
        //   ],
        // ),
      ),
    );
  }
}
