import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'story_circle.dart';

class StoriesList extends StatelessWidget {
  const StoriesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mobile = ResponsiveWrapper.of(context).isMobile;

    return Container(
      height: 90,
      margin: EdgeInsets.only(top: mobile ? 5 : 35),
      padding: const EdgeInsets.symmetric(horizontal: 14),
      //alignment: Alignment.center,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        separatorBuilder: (_, __) => SizedBox(width: 16),
        itemCount: 15,
        itemBuilder: (context, index) {
          return StoryCircle();
        },
      ),
    );
  }
}
