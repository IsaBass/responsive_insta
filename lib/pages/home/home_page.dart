import 'package:flutter/material.dart';

import 'widgets/post_widget.dart';
import 'widgets/responsive_appbar.dart';
import 'widgets/right_panel.dart';
import 'widgets/stories_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          child: ResponsiveAppBar(), preferredSize: Size(double.infinity, 52)),
      body: Row(
        children: [
          Expanded(
            child: ListView(
              children: [
                // Container(child: Text(MediaQuery.of(context).size.toString())),
                StoriesList(),
                PostWidget(),
                PostWidget(),
                PostWidget(),
              ],
            ),
          ),
          RightPanel(),
        ],
      ),
    );
  }
}
