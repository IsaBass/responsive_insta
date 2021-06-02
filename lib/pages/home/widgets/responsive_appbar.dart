import 'package:flutter/material.dart';

class ResponsiveAppBar extends StatelessWidget {
  const ResponsiveAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 1200),
        child: Row(
          children: [
            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: Text(
                "Flutter",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                    fontFamily: "Billabong",
                    color: Colors.white),
              ),
            ),
            SizedBox(width: 15),
            Container(
              // padding: const EdgeInsets.symmetric(horizontal: 8),
              width: 200,
              height: 30,
              alignment: Alignment.centerLeft,
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.white)),
              child: Row(
                children: [
                  Icon(Icons.search),
                  const SizedBox(width: 4),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        isCollapsed: true,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
