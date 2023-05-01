import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonPractice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "Button practice",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("button practice"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ElevatedButton(
              // textColor: Colors.greenAccent,
              // color: Colors.amber,
              child: const Text(
                  "ElevatedButton" /*,style: TextStyle(
                color: Colors.greenAccent,
              ),*/
                  ),
              onPressed: () => {},
            ),
            Container(
              color: Colors.blue,
//              width: 200,
//              height: 50,
              constraints: const BoxConstraints.expand(width: 200, height: 50),
              child: ElevatedButton(
                onPressed: () {  },
                child: const Text("ElevatedButton BoxConstraints"),
              ),
            ),
            FloatingActionButton(
              child: const Icon(Icons.accessibility),
              tooltip: 'FloatingActionButton',
              foregroundColor: Colors.red,
              backgroundColor: Colors.blueAccent,
//          heroTag: ,//类似于一个标识
              elevation: 10.0,
              highlightElevation: 50.0,
             // shape: const CircleBorder(),
//              shape: StadiumBorder(side: BorderSide(width: 2, style: BorderStyle.solid, color: Color(0xFF00FFFF))),
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  side: BorderSide(
                      color: Color(0xFFFFFFFF),
                      style: BorderStyle.solid,
                      width: 2)),
         isExtended: true,
              onPressed: () {
                print('aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa');
              },
            ),
            OutlinedButton(
              child: const Text("OutlineButton"),
              onPressed: () => {},
            ),
            TextButton(
              child: const Text("TextButton"),
              onPressed: () => {},
            ),
            FilledButton(
              child: const Text("FilledButton"),
              onPressed: () => {},
            ),
          CloseButton(
              color: Colors.orangeAccent,
              onPressed: () => {},
            ),
          ],
        ),
      ),
    );
  }
}
