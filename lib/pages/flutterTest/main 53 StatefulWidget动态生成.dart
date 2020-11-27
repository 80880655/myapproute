// 快捷键： flm
import 'package:flutter/material.dart';
// import 'dart:mirrors';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Flutter Demo')),
        body: HomePage(),
      ),
    );
  }
}

// 时间：2020/5/26 10:13
// 目标：点击按钮实现Text 文本的变化;
// 当前使用的是 StatelessWidget 组件， 更换一下试试  StatefulWidget 有状态组件

// 输入快捷键： StatafulW
// 有状态组件
class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int countNum = 0;

  get title => null;

  List list = new List();

  @override
  Widget build(BuildContext context) {
    // 时间：2020/5/26 16:22分
    // 1、使用 map() 方法遍历。
    // 2、点击一个按钮输出 文字。
    // 3、先搭建一个框架。 结果见 53
    // 4、声明一个 list 变量,然后使用 map 方法来遍历。

    // return ListView(
    //   children: <Widget>[
    //     Column(
    //       children: <Widget>[
    //         ListTile(
    //           title: Text('这是一个文本内容'),
    //         ),
    //       ],
    //     ),

    //     RaisedButton(
    //       child: Text('按钮'),
    //       onPressed: () {

    //       },
    //     ),
    //   ],
    // );

    return ListView(
      children: <Widget>[
        Column(
          // children: <Widget>[
          //   ListTile(
          //     title: Text('这是一个文本内容'),
          //   ),
          // ],


          // 使用map方法来遍历
          children: this.list.map((value) {
            return ListTile(
              title: Text(value),
            );
          }).toList(),
        ),


        RaisedButton(
          child: Text('按钮'),

          // 使用map方法来遍历
          onPressed: () {
            setState(() {
              list.add('文本内容！@#@！#@！#@！');
              list.add('文本内容！@#@！#@！323231！');
            });
          },


        ),
      ],
    );
  }
}
