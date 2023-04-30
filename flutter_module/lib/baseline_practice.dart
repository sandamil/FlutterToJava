import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BaseLinePractice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'baseline practice',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: Scaffold(
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const <Widget>[
            Baseline(
              baseline: 100.0,
              baselineType: TextBaseline.alphabetic,
              child: Text(
                "baseline100",
                style: TextStyle(
                  color: Colors.amber,
                  textBaseline: TextBaseline.alphabetic
                ),
              ),
            ),
            Baseline(
              baseline: 100.0,
              baselineType: TextBaseline.alphabetic,
              child: Text(
                "Fontsize30",
                style: TextStyle(
                  fontSize: 30.0,
                    color: Colors.amber,
                    textBaseline: TextBaseline.alphabetic
                ),
              ),
            ),
            Baseline(
              baseline: 100.0,
              baselineType: TextBaseline.alphabetic,
              child: FlutterLogo(
                size: 80,
              )
            ),
          ],
        ),
      ),
    );
  }
}
