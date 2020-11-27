import 'package:flutter/material.dart';


class SettingsPage extends StatefulWidget {
  // SettingsPage({Key key, arguments}) : super(key: key);


  // 时间：2020/6/8 16:24分 
  // 使用命名路由传递参数和传值。
  final arguments;
  SettingsPage({this.arguments});

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('设置页面123'),
      ),
      body: ListView(children: <Widget>[
        ListTile(
          title: Text('这是一个文本${widget.arguments!=null?widget.arguments['id']:'0'}'),
        ),
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
