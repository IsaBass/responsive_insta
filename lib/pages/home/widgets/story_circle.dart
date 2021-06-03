import 'package:flutter/material.dart';

class StoryCircle extends StatelessWidget {
  const StoryCircle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          height: 66,
          width: 66,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
                colors: [Colors.blue, Colors.green],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft),
          ),
          child: Container(
            height: 60,
            width: 60,
            alignment: Alignment.center,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.black87),
            child: CircleAvatar(
              radius: 28,
              backgroundImage: NetworkImage(
                  "https://microimagem.info/wp-content/uploads/2014/10/mobile.png"),
            ),
          ),
        ),
        Text(
          "IsaBass",
          style: TextStyle(fontSize: 12, color: Colors.white),
        )
      ],
    );
  }
}
