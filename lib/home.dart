import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:morpheus/morpheus.dart';
import 'package:ionicons/ionicons.dart';
// Import other files & pages
import 'package:proglearn/content/html.dart';
import 'package:proglearn/content/css.dart';
import 'package:proglearn/content/js.dart';
import 'package:proglearn/settings/developers.dart';
import 'package:proglearn/settings/how_to_use.dart';
import 'package:proglearn/settings/contact_us.dart';
import 'package:proglearn/pages/home_course.dart';
import 'package:proglearn/pages/home_quiz.dart';
import 'package:proglearn/pages/home_settings.dart';

void main() => runApp(const MaterialApp(
      home: Home(),
    ));

// Main app
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: testView(context),
    );
  }

  Widget testView(BuildContext context) {
    const colorScheme = ColorScheme.light();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        hoverColor: Colors.transparent,
        colorScheme: colorScheme,
        scaffoldBackgroundColor: colorScheme.background,
      ),
      title: 'Home',
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/homecourse':
            return MorpheusPageRoute(
              builder: (_) => const HomeCourse(),
              settings: settings,
            );
          case '/quiz':
            return MorpheusPageRoute(
              builder: (_) => const HomeQuiz(),
              settings: settings,
            );
          case '/settings':
            return MorpheusPageRoute(
              builder: (_) => const HomeSettings(),
              settings: settings,
            );
          case '/':
          default:
            return MorpheusPageRoute(
              builder: (_) => const HomeScreen(),
              settings: settings,
            );
        }
      },
    );
  }
}

// Main page that contains the bottom app bar and the body
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final coursesKey = GlobalKey();
  final settingsKey = GlobalKey();
  final quizKey = GlobalKey();
  final createKey = GlobalKey();
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MorpheusTabView(
        duration: const Duration(milliseconds: 300),
        child: <Widget>[
          // HomeCourse can be found in the pages/HomeCourse.dart
          const HomeCourse(
            key: Key('Home'),
          ),
          const HomeQuiz(
            key: Key('Quiz'),
          ),
          const HomeSettings(
            key: Key('settings'),
          ),
        ][_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: HexColor("B983FF"),
        currentIndex: _currentIndex,
        onTap: (index) => setState(() => _currentIndex = index),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Ionicons.home_outline),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Ionicons.shapes_outline),
            label: 'Quiz',
          ),
          BottomNavigationBarItem(
            icon: Icon(Ionicons.settings_outline),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}

//! HomeCourse is moved to the pages/home_course.dart

//! QuizHome is moved to the pages/home_quiz.dart

//! SettingsHome is moved to the pages/home_settings.dart

// Router going to HTML & CSS & JS pages and more.
// Router will be seperated into different files soon.
Route routerHTML() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) =>
        const HTMLcontent(),
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

Route routerCSS() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const CSScontent(),
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

Route routerJS() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const JScontent(),
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

Route routerHowToUse() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const HowToUse(),
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

Route routerDevelopers() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const Developers(),
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

Route routerContact() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const ContactUs(),
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
