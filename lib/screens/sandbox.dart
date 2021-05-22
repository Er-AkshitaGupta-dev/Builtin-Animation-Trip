import 'dart:ui';

import 'package:flutter/material.dart';

class Sandbox extends StatefulWidget {
  @override
  _SandboxState createState() => _SandboxState();
}

class _SandboxState extends State<Sandbox> {
  double _width = 200;
  double _margin = 0;
  double _opacity = 1;
  Color _color = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedContainer(
        duration: Duration(seconds: 1),
        margin: EdgeInsets.all(_margin),
        width: _width,
        color: _color,
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: <Widget>[
          RaisedButton(
            child: Text('Animate Margin'),
            onPressed: () => setState(() => _margin = 50),
          ),
          RaisedButton(
            child: Text('Animate Color'),
            onPressed: () => setState(() => _color = Colors.purple),
          ),
          RaisedButton(
            child: Text('Animate Width'),
            onPressed: () => setState(() => _width = 500),
          ),
          RaisedButton(
            child: Text('Animate Opacity'),
            onPressed: () => setState(() => _opacity = 0),
          ),
          AnimatedOpacity(
              duration: Duration(seconds: 5),
              opacity: _opacity,
              child: Text('hide me', style: TextStyle(color: Colors.white)))
        ]),
      ),
    );
  }
}
