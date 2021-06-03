import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ResponsiveMenuActions extends StatelessWidget {
  const ResponsiveMenuActions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        ResponsiveVisibility(
          visible: false,
          visibleWhen: [
            Condition.smallerThan(name: TABLET),
          ],
          child: IconButton(onPressed: () {}, icon: Icon(Icons.search)),
        ),
        const SizedBox(width: 4),
        IconButton(onPressed: () {}, icon: Icon(Icons.home)),
        const SizedBox(width: 4),
        IconButton(onPressed: () {}, icon: Icon(Icons.send)),
        const SizedBox(width: 4),
        IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border)),
        const SizedBox(width: 16),
        CircleAvatar(
          radius: 16,
          backgroundImage: NetworkImage(
              "https://microimagem.info/wp-content/uploads/2014/10/mobile.png"),
        )
      ],
    );
  }
}
