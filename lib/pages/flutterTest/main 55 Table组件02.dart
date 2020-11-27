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
    // 时间：2020/5/26 17:14分 Table表格组件

    return Table(
      border: TableBorder.all(
        color: Colors.black26,
      ),
      children: [
        TableRow(
            // 第一行样式，添加背景色
            decoration: BoxDecoration(color: Colors.grey),


            children: [
              //增加行高
              SizedBox(
                height: 30.0,
                child: Text(
                  '姓名',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold,fontSize: 20.0),
                ),
              ),
              Text(
                '性别',
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),
              ),
              Text(
                '年龄',
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),
              ),
            ]),

          TableRow(
            children: [
              Text('小红'),
              Text('女'),
              Text('28'),
            ]
          ),

          TableRow(
            children: [
              Text('李四'),
              Text('男'),
              Text('28'),
            ]
          ),


      ],
    );
  }
}
