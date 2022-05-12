import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:flutter/scheduler.dart' show timeDilation;
import 'package:proglearn/home.dart';

void main() => runApp(const AppOnBoard());

class AppOnBoard extends StatelessWidget {
  const AppOnBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Color.fromRGBO(255, 255, 255, 0.86),
      statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.dark,
    ));
    timeDilation = 1.5; // 1.0 means normal animation speed.
    return Scaffold(
      body: onBoardingView(context),
    );
  }

  Widget onBoardingView(BuildContext context) => MaterialApp(
        title: 'Welcome to ProgLearn',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: const OnBoardingPage(),
      );
}

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);
  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    // Navigator.push(
    //   context,
    //   MaterialPageRoute(builder: (context) => const Home()),
    // );
    // pop the root page
    // Navigator.of(context).push(
    //   MaterialPageRoute(builder: (_) => const Home()),
    // );
    // Navigator.of(context).pushReplacement(ator.pop(context, "From first page");
    //   MaterialPageRoute(builder: (context) => const Home()),
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => const Home()),
    );
    // );
    // Navigator.of(context).pushReplacementNamed('/home');
  }

  // Widget _buildFullscreenImage() {
  //   return Image.asset(
  //     'assets/fullscreen.jpg',
  //     fit: BoxFit.cover,
  //     height: double.infinity,
  //     width: double.infinity,
  //     alignment: Alignment.center,
  //   );
  // }

  Widget _buildImage(String assetName, [double width = 350]) {
    return Image.asset('assets/$assetName', width: width);
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(
      fontSize: 19.0,
      fontFamily: 'SFdisplay',
      color: Color.fromRGBO(29, 29, 31, 1),
      fontWeight: FontWeight.w400,
    );

    const pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(
        fontSize: 28.0,
        fontFamily: 'SFdisplay',
        color: Color.fromRGBO(60, 60, 60, 1),
        fontWeight: FontWeight.w700,
      ),
      bodyTextStyle: bodyStyle,
      bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );

    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Colors.white,
      globalHeader: const Align(
        alignment: Alignment.topRight,
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(top: 16, right: 16),
            // child: _buildImage('flutter.png', 100),
          ),
        ),
      ),
      globalFooter: SizedBox(
        width: double.infinity,
        height: 60,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: HexColor('B983FF'),
            // elevation: 8,
          ),
          child: const Text(
            'Let\'s go right away!',
            style: TextStyle(
              fontSize: 16,
              fontFamily: 'SFdisplay',
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
          // onPressed: () => _onIntroEnd(context),
          onPressed: () {
            _onIntroEnd(context);
          },
        ),
      ),
      pages: [
        PageViewModel(
          title: "Home",
          body:
              "Explore the world of programming and learn new skills. By clicking the card you can learn the basics of the language.",
          image: _buildImage('on_boarding/home.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Quiz",
          body:
              "Take a quiz to test your knowledge of what you have learned. You can choose what language you want to take a quiz.",
          image: _buildImage('on_boarding/quiz.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Settings",
          body:
              "The settings page allow you to see the information about the app, the developer and the version of the app.",
          image: _buildImage('on_boarding/settings.png'),
          decoration: pageDecoration,
        ),
        // Backup snippets
        // PageViewModel(
        //   title: "Full Screen Page",
        //   body:
        //       "Lorem Backuo",
        //   image: _buildFullscreenImage(),
        //   decoration: pageDecoration.copyWith(
        //     contentMargin: const EdgeInsets.symmetric(horizontal: 16),
        //     fullScreen: true,
        //     bodyFlex: 2,
        //     imageFlex: 3,
        //   ),
        // ),
        // PageViewModel(
        //   title: "Another title page",
        //   body: "Another beautiful body text for this example onboarding",
        //   image: _buildImage('covers/welcome.png'),
        //   footer: ElevatedButton(
        //     onPressed: () {
        //       introKey.currentState?.animateScroll(0);
        //     },
        //     child: const Text(
        //       'FooButton',
        //       style: TextStyle(color: Colors.white),
        //     ),
        //     style: ElevatedButton.styleFrom(
        //       primary: Colors.lightBlue,
        //       shape: RoundedRectangleBorder(
        //         borderRadius: BorderRadius.circular(8.0),
        //       ),
        //     ),
        //   ),
        //   decoration: pageDecoration,
        // ),
        // PageViewModel(
        //   title: "Title of last page - reversed",
        //   bodyWidget: Row(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: const [
        //       Text("Click on ", style: bodyStyle),
        //       Icon(Icons.edit),
        //       Text(" to edit a post", style: bodyStyle),
        //     ],
        //   ),
        //   decoration: pageDecoration.copyWith(
        //     bodyFlex: 2,
        //     imageFlex: 4,
        //     bodyAlignment: Alignment.bottomCenter,
        //     imageAlignment: Alignment.topCenter,
        //   ),
        //   image: _buildImage('covers/welcome.png'),
        //   reverse: true,
        // ),
      ],
      onDone: () => _onIntroEnd(context),
      //onSkip: () => _onIntroEnd(context), // You can override onSkip callback
      showSkipButton: false,
      skipOrBackFlex: 0,
      nextFlex: 0,
      showBackButton: true,
      //rtl: true, // Display as right-to-left
      back: const Icon(Icons.arrow_back),
      skip: const Text('Skip',
          style: TextStyle(
            fontFamily: 'SFdisplay',
            fontWeight: FontWeight.w600,
          )),
      next: const Icon(Icons.arrow_forward),
      done: const Text('Done',
          style: TextStyle(
            fontFamily: 'SFdisplay',
            fontWeight: FontWeight.w600,
          )),
      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.all(16),
      controlsPadding: kIsWeb
          ? const EdgeInsets.all(12.0)
          : const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Color(0xFFBDBDBD),
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
      dotsContainerDecorator: const ShapeDecoration(
        color: Colors.black87,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart';

// void main() => runApp(const HTUpage());

// class HTUpage extends StatelessWidget {
//   const HTUpage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           leading: IconButton(
//             onPressed: () {
//               Navigator.of(context, rootNavigator: true).pop(context);
//             },
//             icon: const Icon(CupertinoIcons.arrow_left,
//                 color: CupertinoColors.black),
//           ),
//           backgroundColor: Colors.white,
//           elevation: 0.0,
//           title: const Text('How to u',
//               style: TextStyle(
//                   fontFamily: 'SFdisplay',
//                   color: Color.fromRGBO(29, 29, 31, 1),
//                   fontWeight: FontWeight.w400)),
//           centerTitle: true,
//         ),
//         body: ListView(
//           padding: const EdgeInsets.all(15.0),
//           children: <Widget>[
//             Expanded(
//               child: Text(
//                 'How to use',
//                 style: Theme.of(context).textTheme.headline6,
//               ),
//             ),
//           ],
//         ));
//   }
// }
