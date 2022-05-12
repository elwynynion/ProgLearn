import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'js_router.dart';

void main() => runApp(const JScontent());

class JScontent extends StatelessWidget {
  const JScontent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Color.fromRGBO(255, 255, 255, 0.86),
      statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.dark,
    ));
    return MaterialApp(
      title: 'JS Tutorial',
      debugShowCheckedModeBanner: false,
      home: jsList(context),
    );
  }

  Widget jsList(BuildContext context) => Scaffold(
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
                      tag: '_js',
                      child: Image.asset(
                        'assets/covers/js.png',
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
                          "JS Tutorial",
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
                          "JavaScript is a dynamic computer programming language. It is lightweight and most commonly used as a part of web pages, whose implementations allow client-side script to interact with the user and make dynamic pages.",
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
                        // JS Introduction > jsrouter1 > JS1
                        ListTile(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          title: const Text('JS Introduction'),
                          tileColor: Colors.white,
                          trailing: const Icon(CupertinoIcons.chevron_forward),
                          onTap: () {
                            Navigator.of(context).push(jsRouter1());
                          },
                        ),
                        // Adding a JavaScript to a Web page > jsrouter2 > JS2
                        ListTile(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          title:
                              const Text('Adding a JavaScript to a Web page'),
                          tileColor: Colors.white,
                          trailing: const Icon(CupertinoIcons.chevron_forward),
                          onTap: () {
                            Navigator.of(context).push(jsRouter2());
                          },
                        ),
                        // JavaScript External > jsrouter3 > JS3
                        ListTile(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          title: const Text('JavaScript External'),
                          tileColor: Colors.white,
                          trailing: const Icon(CupertinoIcons.chevron_forward),
                          onTap: () {
                            Navigator.of(context).push(jsRouter3());
                          },
                        ),
                        // JavaScript Comments > jsrouter4 > JS4
                        ListTile(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          title: const Text('JavaScript Comments'),
                          tileColor: Colors.white,
                          trailing: const Icon(CupertinoIcons.chevron_forward),
                          onTap: () {
                            Navigator.of(context).push(jsRouter4());
                          },
                        ),
                        // JavaScript Variables > jsrouter4 > JS5
                        ListTile(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          title: const Text('JavaScript Variables'),
                          tileColor: Colors.white,
                          trailing: const Icon(CupertinoIcons.chevron_forward),
                          onTap: () {
                            Navigator.of(context).push(jsRouter5());
                          },
                        ),
                        // JavaScript Data Types > jsrouter6 > JS6
                        ListTile(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          title: const Text('JavaScript Data Types'),
                          tileColor: Colors.white,
                          trailing: const Icon(CupertinoIcons.chevron_forward),
                          onTap: () {
                            Navigator.of(context).push(jsRouter6());
                          },
                        ),
                        // JavaScript Operators > jsrouter7 > JS7
                        ListTile(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          title: const Text('JavaScript Operators'),
                          tileColor: Colors.white,
                          trailing: const Icon(CupertinoIcons.chevron_forward),
                          onTap: () {
                            Navigator.of(context).push(jsRouter7());
                          },
                        ),
                        // JavaScript Assignment > jsrouter8 > JS8
                        ListTile(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          title: const Text('JavaScript Assignment Operators'),
                          tileColor: Colors.white,
                          trailing: const Icon(CupertinoIcons.chevron_forward),
                          onTap: () {
                            Navigator.of(context).push(jsRouter8());
                          },
                        ),
                        // JavaScript if else > jsrouter9 > JS9
                        ListTile(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          title: const Text('JavaScript If else and Else if'),
                          tileColor: Colors.white,
                          trailing: const Icon(CupertinoIcons.chevron_forward),
                          onTap: () {
                            Navigator.of(context).push(jsRouter9());
                          },
                        ),
                        // JavaScript switch > jsrouter10 > JS10
                        ListTile(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          title: const Text('JavaScript Switch Statement'),
                          tileColor: Colors.white,
                          trailing: const Icon(CupertinoIcons.chevron_forward),
                          onTap: () {
                            Navigator.of(context).push(jsRouter10());
                          },
                        ),
                        // JavaScript Loops > jsrouter11 > JS11
                        ListTile(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          title: const Text('JavaScript Loops'),
                          tileColor: Colors.white,
                          trailing: const Icon(CupertinoIcons.chevron_forward),
                          onTap: () {
                            Navigator.of(context).push(jsRouter11());
                          },
                        ),
                        // JavaScript while loops > jsrouter12 > JS12
                        ListTile(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          title: const Text(
                              'JavaScript While Loops and Do While Loops'),
                          tileColor: Colors.white,
                          trailing: const Icon(CupertinoIcons.chevron_forward),
                          onTap: () {
                            Navigator.of(context).push(jsRouter12());
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
