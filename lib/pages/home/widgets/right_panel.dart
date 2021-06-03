import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class RightPanel extends StatelessWidget {
  const RightPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveVisibility(
      visible: false,
      visibleWhen: [
        Condition.largerThan(name: TABLET),
      ],
      child: Container(
        margin: const EdgeInsets.fromLTRB(35, 56, 20, 0),
        width: 300,
        child: ListView(
          children: [
            _barraUsuario(),
            const SizedBox(height: 24),
            _barraTitleSugestoes(),
            const SizedBox(height: 24),
            _sugestion(
              "danielciolfi",
              "Prof. Daniel Ciolfi",
              "https://microimagem.info/wp-content/uploads/2014/10/mobile.png",
            ),
            _sugestion(
              "kekinha",
              "Jessyca Nathaly",
              "https://media.istockphoto.com/vectors/female-avatar-businesswoman-profile-icon-user-image-girl-face-vector-id944950976",
            ),
            _sugestion(
              "danielciolfi",
              "Prof. Daniel Ciolfi",
              "https://microimagem.info/wp-content/uploads/2014/10/mobile.png",
            ),
            _sugestion(
              "kekinha",
              "Jessyca Nathaly",
              "https://media.istockphoto.com/vectors/female-avatar-businesswoman-profile-icon-user-image-girl-face-vector-id944950976",
            ),
          ],
        ),
      ),
    );
  }

  Widget _sugestion(String nick, String name, String avatar) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          CircleAvatar(
            radius: 22,
            backgroundColor: Colors.white,
            backgroundImage: NetworkImage(avatar),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  nick,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  name,
                  style: TextStyle(
                      fontWeight: FontWeight.w400, color: Colors.grey),
                ),
              ],
            ),
          ),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: () {},
              child: Text(
                "Ver",
                style: TextStyle(
                  fontSize: 12,
                  color: Color(0xFF0396F6),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _barraTitleSugestoes() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Sugestões para você",
          style:
              TextStyle(fontWeight: FontWeight.w700, color: Colors.grey[500]),
        ),
        MouseRegion(
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
            onTap: () {},
            child: Text(
              "Ver tudo",
              style: TextStyle(
                fontSize: 12,
                color: Color(0xFF0396F6),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget _barraUsuario() {
    return Row(
      children: [
        CircleAvatar(
          radius: 29,
          backgroundColor: Colors.green,
          backgroundImage: NetworkImage(
              "https://microimagem.info/wp-content/uploads/2014/10/mobile.png"),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "IsaBass",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                "Isaias Gonçalves",
                style:
                    TextStyle(fontWeight: FontWeight.w400, color: Colors.grey),
              ),
            ],
          ),
        ),
        MouseRegion(
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
            onTap: () {},
            child: Text(
              "Sair",
              style: TextStyle(
                fontSize: 12,
                color: Color(0xFF0396F6),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        )
      ],
    );
  }
}
