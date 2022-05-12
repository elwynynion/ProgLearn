import 'package:flutter/material.dart';
import 'package:flutter_highlighter/themes/arduino-light.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_highlighter/flutter_highlighter.dart';
import 'package:flutter/cupertino.dart';

class CodeElementBuilder extends MarkdownElementBuilder {
  @override
  Widget? visitElementAfter(element, TextStyle? preferredStyle) {
    var language = '';

    if (element.attributes['class'] != null) {
      String lg = element.attributes['class'] as String;
      language = lg.substring(9);
    }

    return Container(
        padding: const EdgeInsets.all(0),
        child: SizedBox(
          child: HighlightView(
            element.textContent,
            language: language,
            padding: const EdgeInsets.only(
                left: 0.0, right: 0.0, top: 0.0, bottom: 0.0),
            theme: arduinoLightTheme,
            // theme: MediaQueryData.fromWindow(WidgetsBinding.instance.)
            //             .platformBrightness ==
            //         Brightness.light
            //     ? arduinoLightTheme
            //     : githubTheme,
            textStyle: GoogleFonts.robotoMono(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              textBaseline: TextBaseline.alphabetic,
              wordSpacing: 1,
            ),
          ),
        ));

    // return SizedBox(
    //   width:
    //       MediaQueryData.fromWindow(WidgetsBinding.instance.window).size.width,
    //   child: HighlightView(
    //     // The original code to be highlighted
    //     element.textContent,

    //     // Specify language
    //     // It is recommended to give it a value for performance
    //     language: language,

    //     // Specify highlight theme
    //     // All available themes are listed in `themes` folder
    //     theme: MediaQueryData.fromWindow(WidgetsBinding.instance.window)
    //                 .platformBrightness ==
    //             Brightness.light
    //         ? githubTheme
    //         : githubTheme,

    //     // Specify padding
    //     padding: const EdgeInsets.only(left: 10, top: 5, right: 0, bottom: 0),

    //     // Specify text style
    //     textStyle: GoogleFonts.robotoMono(
    //       fontSize: 13,
    //       fontWeight: FontWeight.w400,
    //       textBaseline: TextBaseline.alphabetic,
    //     ),
    //   ),
    // );
  }
}
