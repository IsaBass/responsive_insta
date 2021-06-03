import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({Key? key}) : super(key: key);

  final padPadrao = 12.0;

  @override
  Widget build(BuildContext context) {
    final isDesktop = ResponsiveWrapper.of(context).isDesktop;

    return Padding(
      padding: EdgeInsets.symmetric(vertical: isDesktop ? 16 : 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _barraSuperior(),
          Image.network(
              "https://mayvenstudios.com/wp-content/uploads/mobile-development-tools-header.jpg"),
          _acoes(),
          _textinhoCurtidos(),
          if (isDesktop) _sendComentario(),
        ],
      ),
    );
  }

  Widget _sendComentario() {
    return Column(
      children: [
        Divider(color: Colors.white70),
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.fromLTRB(16, 20, 0, 24),
                child: TextFormField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    isCollapsed: true,
                    hintText: "Adicione um comentário...",
                    hintStyle: TextStyle(fontSize: 13, color: Colors.white60),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  "Publicar",
                  style: TextStyle(color: Colors.white),
                ),
                // style: TextButton.styleFrom(textStyle: TextSty),
              ),
            )
          ],
        ),
      ],
    );
  }

  Widget _textinhoCurtidos() {
    return Padding(
      // alignment: Alignment.topLeft,
      padding: EdgeInsets.symmetric(horizontal: padPadrao),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Curtido por danielciolfi e outras 5 milhões de pessoas",
          ),
          Text(
            "HÀ 2 horas",
            style: TextStyle(fontSize: 10),
          )
        ],
      ),
    );
  }

  Widget _acoes() {
    return Padding(
      padding: EdgeInsets.all(padPadrao),
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              child: Icon(Icons.favorite_border),
            ),
          ),
          const SizedBox(width: 10),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              child: Icon(Icons.messenger_outline),
            ),
          ),
          const SizedBox(width: 10),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              child: Icon(Icons.send),
            ),
          ),
          Expanded(child: Container()),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              child: Icon(Icons.bookmark_border),
            ),
          ),
        ],
      ),
    );
  }

  Widget _barraSuperior() {
    return Padding(
      padding: EdgeInsets.all(padPadrao),
      child: Row(
        children: [
          CircleAvatar(
            radius: 18,
            backgroundColor: Colors.transparent,
            backgroundImage: NetworkImage(
                "https://microimagem.info/wp-content/uploads/2014/10/mobile.png"),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Text(
              "IsaBass",
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
          ),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              child: Icon(Icons.more_horiz_sharp),
            ),
          ),
        ],
      ),
    );
  }
}
