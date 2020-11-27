import 'package:flutter/material.dart';


class SecondPage extends StatefulWidget {


  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SecondPage页面'),
      ),
      body: ListView(children: <Widget>[
        // ListTile(
        //   title: Text('这是一个文本${widget.arguments!=null?widget.arguments['id']:'0'}'),
        // ),
        ListTile(
          title: Text('这是一个文本'),
        ),
        ListTile(
          title: Text('这是一个文本'),
        ),
        ListTile(
          title: Text('这是一个文本'),
        ),
      ]),
    );
  }
}
