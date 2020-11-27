import 'package:flutter/material.dart';
import 'dart:convert';

void main() {
  runApp(
    MaterialApp(
      title: '页面跳转返回数据',
      home: FirstPage(),
      theme: ThemeData(
        // primarySwatch:Colors.yellow,
        primaryColorDark: Colors.white70,
      ),
      // darkTheme: ThemeData.dark(),
    ),
  );
}

class FirstPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('JSON 数据传递'),
      ),
      body: Container(
          child: Column(
            children: <Widget>[
              RaisedButton(
                onPressed: () {},
                color: Colors.blueAccent,
                child: new Text('GET 方法'),
              ),
              RaisedButton(
                onPressed: () {},
                color: Colors.yellowAccent,
                child: new Text('POST 方法'),
              ),
              RaisedButton(
                onPressed: () {},
                color: Colors.orangeAccent,
                child: new Text('JSON 方法'),
              )
            ],
          ),
        ),
    );
  }
}




