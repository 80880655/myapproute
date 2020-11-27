// 快捷键： flm

import 'package:flutter/material.dart';
import 'package:myapproute/res/listData.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Flutter Demo')),
        body: LayoutDemo(),
      ),
    );
  }
}

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 时间：2002/5/20 23:19分  Stack 层叠组件。

    // 正常显示：
    // return Center(
    //   child: Column(
    //     children: <Widget>[
    //       Container(
    //         child:Container(
    //           height: 400.0,
    //           width: 300.0,
    //           color: Colors.redAccent,
    //           // 显示在文本里面了
    //           child: Text('在文本里面！！！！'),
    //         ),
    //       ),
    //       Text('我是一个文本我是一个文本我是一个文本我是一个文本我是一个文本'),
    //     ],
    //   ),
    // );



    // 使用 Stack 组件来层叠显示
    return Stack(

      // 将Stack 内容全部居中。
      // alignment: Alignment.center,
      // alignment: Alignment(x, y),

      // 实现定位
      alignment: Alignment(0, 0),

      // 注意上下的顺序
      children: <Widget>[
        Text('堆叠效果！！！！！@#@！#@！#@！#@！#@！@！------------'),

        Container(
          height: 400.0,
          width: 300.0,
          color: Colors.redAccent,
        ),   
        Text('我是一个文本我是一个文本我是一个文本我是一个文本我是一个文本')
      ],
    );


  }
}


