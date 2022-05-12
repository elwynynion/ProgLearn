import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'html_router.dart';
import 'package:flutter/services.dart';

void main() => runApp(const HTMLcontent());

class HTMLcontent extends StatelessWidget {
  const HTMLcontent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Color.fromRGBO(255, 255, 255, 0.86),
      statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.dark,
    ));
    return MaterialApp(
      title: 'HTML Tutorial',
      debugShowCheckedModeBanner: false,
      home: htmlList(context),
    );
  }

  Widget htmlList(BuildContext context) => Scaffold(
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
                      tag: '_html',
                      child: Image.asset(
                        'assets/covers/html.png',
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
                          "HTML Tutorial",
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
                          "HTML (HyperText Markup Language) is the most basic building block of the Web. It defines the meaning and structure of web content.",
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
                        // HTML Introduction > htmlrouter1 > html1
                        ListTile(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          tileColor: Colors.white,
                          title: const Text('HTML Introduction'),
                          trailing: const Icon(CupertinoIcons.chevron_forward),
                          onTap: () {
                            Navigator.of(context).push(htmlRouter1());
                          },
                        ),
                        // HTML Elements > htmlrouter6 > html6
                        ListTile(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          tileColor: Colors.white,
                          title: const Text('HTML Elements'),
                          trailing: const Icon(CupertinoIcons.chevron_forward),
                          onTap: () {
                            Navigator.of(context).push(htmlRouter6());
                          },
                        ),
                        // HTML Paragraph > htmlrouter2 > html2
                        ListTile(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          tileColor: Colors.white,
                          title: const Text('HTML Paragraphs'),
                          trailing: const Icon(CupertinoIcons.chevron_forward),
                          onTap: () {
                            Navigator.of(context).push(htmlRouter2());
                          },
                        ),
                        // HTML Text Formatting > htmlrouter3 > html3
                        ListTile(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          tileColor: Colors.white,
                          title: const Text('HTML Text Formatting'),
                          trailing: const Icon(CupertinoIcons.chevron_forward),
                          onTap: () {
                            Navigator.of(context).push(htmlRouter3());
                          },
                        ),
                        // HTML Headings > htmlrouter4 > html4
                        ListTile(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          tileColor: Colors.white,
                          title: const Text('HTML Headings'),
                          trailing: const Icon(CupertinoIcons.chevron_forward),
                          onTap: () {
                            Navigator.of(context).push(htmlRouter4());
                          },
                        ),
                        // HTML Comments > htmlrouter5 > html5
                        ListTile(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          tileColor: Colors.white,
                          title: const Text('HTML Comments'),
                          trailing: const Icon(CupertinoIcons.chevron_forward),
                          onTap: () {
                            Navigator.of(context).push(htmlRouter5());
                          },
                        ),

                        // HTML Images > htmlrouter7 > html7
                        ListTile(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          tileColor: Colors.white,
                          title: const Text('HTML Images'),
                          trailing: const Icon(CupertinoIcons.chevron_forward),
                          onTap: () {
                            Navigator.of(context).push(htmlRouter7());
                          },
                        ),
                        // HTML Lists > htmlrouter8 > html8
                        ListTile(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          tileColor: Colors.white,
                          title: const Text('HTML Lists'),
                          trailing: const Icon(CupertinoIcons.chevron_forward),
                          onTap: () {
                            Navigator.of(context).push(htmlRouter8());
                          },
                        ),
                        // HTML Tables > htmlrouter9 > html9
                        ListTile(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          tileColor: Colors.white,
                          title: const Text('HTML Tables'),
                          trailing: const Icon(CupertinoIcons.chevron_forward),
                          onTap: () {
                            Navigator.of(context).push(htmlRouter9());
                          },
                        ),
                        // HTML Inline and Blocked Elements > htmlrouter10 > html10
                        ListTile(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          tileColor: Colors.white,
                          title: const Text('HTML Inline and Blocked Elements'),
                          trailing: const Icon(CupertinoIcons.chevron_forward),
                          onTap: () {
                            Navigator.of(context).push(htmlRouter10());
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
