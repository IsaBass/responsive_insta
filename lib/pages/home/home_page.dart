import 'package:flutter/material.dart';

import 'widgets/responsive_appbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          child: ResponsiveAppBar(), preferredSize: Size(double.infinity, 52)),
      body: Container(
          //color: Colors.black[100],
          child: Text(MediaQuery.of(context).size.toString())),
    );
  }
}
