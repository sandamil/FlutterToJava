import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static String tag = 'home-page';

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    const user = Hero(
      tag: 'hero',
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: CircleAvatar(
          radius: 72.0,
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage('assets/bg.jpeg'),
        ),
      ),
    );

    const welcome = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Bienvenido',
        style: TextStyle(color: Colors.white, fontSize: 20.0),
      ),
    );

    const info = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        "Flutter es el marco de interfaz de usuario móvil de Google que puede crear rápidamente interfaces de usuario nativas de alta calidad en iOS y Android. Flutter puede funcionar con el código existente. En todo el mundo, cada vez más desarrolladores y organizaciones usan Flutter, y Flutter es completamente libre y de código abierto.",        style: TextStyle(color: Colors.white, fontSize: 20.0),
    ),
    );

    final body = Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(28.0),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.green,
            Colors.lightGreenAccent
          ]
        )
      ),
      child: Column(children: const <Widget>[
        user, welcome, info,
      ],),
    );
    
    return Scaffold(
      body: body,
    );
  }
}