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
  int countNum=0;

  @override
  Widget build(BuildContext context) {
    // return Container(
    //   child: Text('hellow'),

    return Column(
      children: <Widget>[
        SizedBox(
          height: 200.0,
        ),
        Chip(
          // label: Text('你好'),
          label: Text('${this.countNum}'),
        ),
        SizedBox(
          height: 20.0,
        ),
        RaisedButton(child: Text('按钮'), onPressed: (){

          // // 使用 有状态组件 StatefulWidget  还是无法改变
          // this.countNum++;
          // print(this.countNum);

          // 时间：2020/5/26 15:48分 只有有状态组件 StatefulWidget 才有 setState 的方法;
          // 使用了这个方法 界面的数字才会有变化。
          setState(() {
            this.countNum++;
            print(this.countNum);
          });
        

        }),
      ],
    );
  }
}
