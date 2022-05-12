import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:proglearn/content/css_router.dart';

void main() => runApp(const CSScontent());

class CSScontent extends StatelessWidget {
  const CSScontent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Color.fromRGBO(255, 255, 255, 0.86),
      statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.dark,
    ));
    return MaterialApp(
      title: 'CSS Tutorial',
      debugShowCheckedModeBanner: false,
      home: cssList(context),
    );
  }

  Widget cssList(BuildContext context) => Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.4,
                    width: MediaQuery.of(context).size.width,
                    child: Hero(
                      tag: '_CSS',
                      child: Image.asset(
                        'assets/covers/css.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 24.0, vertical: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        SizedBox(height: 12),
                        Text(
                          "CSS Tutorial",
                          style: TextStyle(
                            fontFamily: 'SFdisplay',
                            color: Color.fromRGBO(29, 29, 31, 1),
                            fontSize: 28.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          "Cascading Style Sheets is a style sheet language used for describing the presentation of a document written in a markup language such as HTML. ",
                          style: TextStyle(
                            fontFamily: 'SFtext',
                            color: Color.fromRGBO(29, 29, 31, 0.6),
                            fontSize: 16.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // list view
                  Container(
                    constraints: BoxConstraints.expand(
                      height:
                          Theme.of(context).textTheme.headline4!.fontSize! * 3 +
                              200.0,
                    ),
                    height: MediaQuery.of(context).size.height - 200,
                    child: ListView(
                      padding: const EdgeInsets.all(9.0),
                      children: [
                        // CSS Introduction > cssrouter1 > css1
                        ListTile(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          tileColor: Colors.white,
                          title: const Text('CSS Introduction'),
                          trailing: const Icon(CupertinoIcons.chevron_forward),
                          onTap: () {
                            Navigator.of(context).push(cssRouter1());
                          },
                        ),
                        // CSS Inline, Embedded, and External > cssrouter2 > css2
                        ListTile(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          tileColor: Colors.white,
                          title:
                              const Text('CSS Inline, Embedded, and External'),
                          trailing: const Icon(CupertinoIcons.chevron_forward),
                          onTap: () {
                            Navigator.of(context).push(cssRouter2());
                          },
                        ),
                        // CSS Syntax > cssrouter3 > css3
                        ListTile(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          tileColor: Colors.white,
                          title: const Text('CSS Syntax'),
                          trailing: const Icon(CupertinoIcons.chevron_forward),
                          onTap: () {
                            Navigator.of(context).push(cssRouter3());
                          },
                        ),
                        // CSS Rules and Selector > cssrouter4 > css4
                        ListTile(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          tileColor: Colors.white,
                          title: const Text('CSS Rules and Selectors'),
                          trailing: const Icon(CupertinoIcons.chevron_forward),
                          onTap: () {
                            Navigator.of(context).push(cssRouter4());
                          },
                        ),
                        // CSS Comments, Style Cascade and Inheritance > cssrouter5 > css5
                        ListTile(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          tileColor: Colors.white,
                          title: const Text(
                              'CSS Comments, Style Cascade and Inheritance'),
                          trailing: const Icon(CupertinoIcons.chevron_forward),
                          onTap: () {
                            Navigator.of(context).push(cssRouter5());
                          },
                        ),
                        // CSS Fonts > cssrouter6 > css6
                        ListTile(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          tileColor: Colors.white,
                          title: const Text('CSS Fonts'),
                          trailing: const Icon(CupertinoIcons.chevron_forward),
                          onTap: () {
                            Navigator.of(context).push(cssRouter6());
                          },
                        ),
                        // CSS Box Model > cssrouter7 > css7
                        ListTile(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          tileColor: Colors.white,
                          title: const Text('CSS Box Model'),
                          trailing: const Icon(CupertinoIcons.chevron_forward),
                          onTap: () {
                            Navigator.of(context).push(cssRouter7());
                          },
                        ),
                        // CSS Height and Width > cssrouter8 > css8
                        ListTile(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          tileColor: Colors.white,
                          title: const Text('CSS Height and Width'),
                          trailing: const Icon(CupertinoIcons.chevron_forward),
                          onTap: () {
                            Navigator.of(context).push(cssRouter8());
                          },
                        ),
                        // CSS Borders > cssrouter9 > css9
                        ListTile(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          tileColor: Colors.white,
                          title: const Text('CSS Borders'),
                          trailing: const Icon(CupertinoIcons.chevron_forward),
                          onTap: () {
                            Navigator.of(context).push(cssRouter9());
                          },
                        ),
                        // CSS Margins > cssrouter10 > css10
                        ListTile(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          tileColor: Colors.white,
                          title: const Text('CSS Margins'),
                          trailing: const Icon(CupertinoIcons.chevron_forward),
                          onTap: () {
                            Navigator.of(context).push(cssRouter10());
                          },
                        ),
                        // Padding > cssrouter11 > css11
                        ListTile(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          tileColor: Colors.white,
                          title: const Text('CSS Paddings'),
                          trailing: const Icon(CupertinoIcons.chevron_forward),
                          onTap: () {
                            Navigator.of(context).push(cssRouter11());
                          },
                        ),
                        const ListTile(
                          contentPadding: EdgeInsets.only(bottom: 30.0),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 35.0, left: 10.0),
              child: IconButton(
                padding: const EdgeInsets.all(11.0),
                icon: const Icon(
                  CupertinoIcons.chevron_back,
                  color: Colors.black54,
                  size: 30.0,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
      );
}
