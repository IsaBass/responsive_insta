import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'pages/home/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: HomePage(),

      ////
      ///
      builder: (context, widget) => ResponsiveWrapper.builder(
          ClampingScrollWrapper.builder(context, widget!),
          maxWidth: 1200,
          minWidth: 450,
          defaultScale: true,
          defaultName: MOBILE,
          breakpoints: [
            ResponsiveBreakpoint.resize(450, name: MOBILE),
            ResponsiveBreakpoint.resize(700, name: TABLET),
            ResponsiveBreakpoint.resize(800, name: DESKTOP),
            // ResponsiveBreakpoint.autoScale(800, name: TABLET),
            // ResponsiveBreakpoint.autoScale(1000, name: TABLET),
            // ResponsiveBreakpoint.resize(1200, name: DESKTOP),
            // ResponsiveBreakpoint.autoScale(2460, name: "4K"),
          ],
          background: Container(color: Colors.grey[200]!)),
    );
  }
}
