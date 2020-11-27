import 'package:flutter/material.dart';
// import 'dart:core';


// modify:gaofeng 2020/5/7 改动MyApp 函数。 效果为： 动态构成 动态列表。
void main() => runApp(MyApp(
    // 1、定义一个传入的参数
    items: new List<String>.generate(100, (i) => "Item number: $i")
));


// 创建类
class MyApp extends StatelessWidget {
  // 2、修改 MyApp, 增加一个构造函数; 下面是 dart 语法。
  final List<String> items;
  MyApp({Key key, @required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '2020/5/7,Demo02 ListView',
      home: Scaffold(
        appBar: new AppBar(title: new Text('2020/5/7,Demo02 动态创建 ListView')),
        // body: Center(

        //   child: Container(
        //     height: 300.0,
        //     child: Mylist(),
        //   ),
        // ),

        // modify:gaofeng 2020/5/7 14:37
        // 动态创建
        body: new ListView.builder(
          // 使用 items.length ，虚拟机异常报错，这里可以考虑使用 实际的参数100来解决，然后重启虚拟机。
          itemCount: items.length,
          // itemCount: 100,

          itemBuilder: (context, index) {
            return new ListTile(
              title: new Text('${items[index]}'),
            );
          },
        ),
      ),
    );
  }
}

// class Mylist extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       // 1、横向排列
//       scrollDirection: Axis.horizontal,

//       // 2、添加一个数组
//       children: <Widget>[
//         // 3、填充格子
//         new Container(
//           width: 220.0,
//           color: Colors.redAccent,
//         ),

//         new Container(
//           width: 220.0,
//           color: Colors.orangeAccent,
//         ),

//         new Container(
//           width: 220.0,
//           color: Colors.redAccent,
//         ),

//         new Container(
//           width: 220.0,
//           color: Colors.yellowAccent,
//         ),
//       ],
//     );
//   }
// }
