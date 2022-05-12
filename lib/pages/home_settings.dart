import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:proglearn/home.dart';
import 'package:flutter/scheduler.dart' show timeDilation;
import 'package:flutter/services.dart';
import 'package:flutter/cupertino.dart';
import 'package:ionicons/ionicons.dart';
import 'package:proglearn/settings/about.dart';

void main() => runApp(const HomeSettings());

class HomeSettings extends StatelessWidget {
  const HomeSettings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Color.fromRGBO(255, 255, 255, 0.86),
      statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.dark,
    ));
    timeDilation = 1.5; // 1.0 means normal animation speed.
    return MaterialApp(
      title: 'Settings',
      debugShowCheckedModeBanner: false,
      home: homeSettingsView(context),
    );
  }

  Widget homeSettingsView(BuildContext context) => Scaffold(
        backgroundColor: HexColor("#ffffff"),
        body: ListView(
          padding: const EdgeInsets.all(15.0),
          children: <Widget>[
            introTextSettings(context),
            settingListItem(context),
            const SizedBox(height: 20),
          ],
        ),
      );

  // Settings Page Title 'Settings'
  Widget introTextSettings(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const <Widget>[
          SizedBox(height: 40),
          // margin
          Padding(
            padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
            child: Text(
              "Settings",
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

  // Container for 'how to use' | currently
  Widget htuCard(BuildContext context) => Container(
        decoration: BoxDecoration(
          color: HexColor("FDF2DA"),
          borderRadius: BorderRadius.circular(24),
          border: Border.all(
            color: HexColor("#dddddd"),
            width: 0.9,
          ),
        ),
        child: InkWell(
          onTap: () {
            // Router to HTU page (settings/how_to_use.dart)
            Navigator.of(context).push(routerHTML());
          },
          child: Column(
            children: [
              ListTile(
                onTap: () {
                  // Router to HTU page (settings/how_to_use.dart)
                  Navigator.of(context).push(routerHowToUse());
                },
                tileColor: Colors.transparent,
                trailing: const Icon(CupertinoIcons.chevron_forward,
                    color: Color.fromRGBO(153, 150, 150, 1)),
                title: const Text(
                  'How to use',
                  style: TextStyle(
                    fontFamily: 'SFdisplay',
                    color: Color.fromRGBO(60, 60, 60, 1),
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
      );

  // List of items in settings
  Widget settingListItem(BuildContext context) => Column(
        children: <Widget>[
          // Container(
          //   alignment: Alignment.centerLeft,
          //   child: const Text(
          //     "General",
          //     style: TextStyle(
          //       color: Color.fromRGBO(60, 60, 60, 1),
          //       fontFamily: 'SFdisplay',
          //       fontWeight: FontWeight.w800,
          //       fontSize: 20.0,
          //       overflow: TextOverflow.fade,
          //     ),
          //   ),
          // ),

          const SizedBox(height: 10),

          ListTile(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            title: const Text(
              'About',
              style: TextStyle(
                fontFamily: 'SFdisplay',
                color: Color.fromRGBO(60, 60, 60, 1),
                fontSize: 17,
                fontWeight: FontWeight.w500,
              ),
            ),
            leading: const Icon(Ionicons.information_circle_outline,
                color: Colors.black54),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AboutApp()),
              );
            },
          ),
          ListTile(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            title: const Text(
              'Developers',
              style: TextStyle(
                fontFamily: 'SFdisplay',
                color: Color.fromRGBO(60, 60, 60, 1),
                fontSize: 17,
                fontWeight: FontWeight.w500,
              ),
            ),
            leading: const Icon(Ionicons.people_circle_outline,
                color: Colors.black54),
            onTap: () {
              Navigator.of(context).push(routerDevelopers());
            },
          ),
          ListTile(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            title: const Text(
              'Contact Us',
              style: TextStyle(
                fontFamily: 'SFdisplay',
                color: Color.fromRGBO(60, 60, 60, 1),
                fontSize: 17,
                fontWeight: FontWeight.w500,
              ),
            ),
            leading: const Icon(Ionicons.mail_outline, color: Colors.black54),
            onTap: () {
              Navigator.of(context).push(routerContact());
            },
          ),
          ListTile(
            title: const Text(
              'Help',
              style: TextStyle(
                fontFamily: 'SFdisplay',
                color: Color.fromRGBO(60, 60, 60, 1),
                fontSize: 17,
                fontWeight: FontWeight.w500,
              ),
            ),
            leading:
                const Icon(Ionicons.help_circle_outline, color: Colors.black54),
            onTap: () {
              Navigator.of(context).push(routerHowToUse());
            },
          ),
        ],
      );
}
