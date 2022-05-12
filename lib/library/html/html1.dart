import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:markdown/markdown.dart' as md;
import 'package:flutter/cupertino.dart';
import 'package:proglearn/builder/code_element.dart';
import 'package:proglearn/builder/padding_builder.dart';

// html introduction
void main() => runApp(const HTML1());

class HTML1 extends StatelessWidget {
  const HTML1({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // return MaterialApp(
    //   title: 'HTML Tutorial',
    //   debugShowCheckedModeBanner: false,
    //   theme: ThemeData(
    //     visualDensity: VisualDensity.adaptivePlatformDensity,
    //   ),
    //   home: const MyHomePage(),
    // );
    return const Scaffold(
      body: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Method that will read the local file in your project. Path for us will be the ASSETS folder at the root level of the application
  Future<String> getFileData(String path) async {
    return await rootBundle.loadString(path);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(CupertinoIcons.arrow_left,
              color: CupertinoColors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: const Text('HTML Tutorial',
            style: TextStyle(
                fontFamily: 'SFdisplay',
                color: Color.fromRGBO(29, 29, 31, 1),
                fontWeight: FontWeight.w400)),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Center(
          child: FutureBuilder(
            future: getFileData('md/html/html1.md'),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (!snapshot.hasData) {
                return const Text('Loading Content');
              }

              return Markdown(
                builders: {
                  'code': CodeElementBuilder(),
                },
                paddingBuilders: <String, MarkdownPaddingBuilder>{
                  'p': PPaddingBuilder(),
                  'h3': H3PaddingBuilder(),
                },
                key: const Key("defaultmarkdownformatter"),
                data: snapshot.data,
                softLineBreak: true,
                extensionSet: md.ExtensionSet(
                  md.ExtensionSet.gitHubFlavored.blockSyntaxes,
                  [
                    md.EmojiSyntax(),
                    ...md.ExtensionSet.gitHubFlavored.inlineSyntaxes
                  ],
                ),
                // open url from markdown here:
                onTapLink: (text, url, title) {
                  if (url != null && url.startsWith('http')) {
                    launch(url);
                  }
                },

                styleSheet: MarkdownStyleSheet(
                  h1: const TextStyle(
                      fontFamily: 'SFdisplay',
                      color: Color.fromRGBO(29, 29, 31, 1),
                      fontSize: 32,
                      fontWeight: FontWeight.w600),
                  h2: const TextStyle(
                      fontFamily: 'SFdisplay',
                      color: Color.fromRGBO(29, 29, 31, 1),
                      fontSize: 25,
                      fontWeight: FontWeight.w600),
                  h3: const TextStyle(
                      fontFamily: 'SFdisplay',
                      color: Color.fromRGBO(29, 29, 31, 1),
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                  blockquote: TextStyle(color: Colors.grey[800], fontSize: 20),
                  p: TextStyle(color: Colors.grey[800], fontSize: 15),
                ),
                selectable: false,
              );
            },
          ),
        ),
      ),
    );
  }
}




launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
