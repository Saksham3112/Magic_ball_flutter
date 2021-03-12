import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: code(),
      ),
    );

class code extends StatefulWidget {
  @override
  _codeState createState() => _codeState();
}

class _codeState extends State<code> {
  int num = 1;
  void changepic() {
    setState(() {
      num = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Ask Me Anything',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
          ),
        ),
        backgroundColor: Colors.blue[800],
      ),
      backgroundColor: Colors.blue.shade400,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FlatButton(
              onPressed: () {
                changepic();
              },
              child: Expanded(
                child: Image.asset('images/ball$num.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
