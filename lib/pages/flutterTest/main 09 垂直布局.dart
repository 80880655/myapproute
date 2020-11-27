import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Column Widget Demo',
      home: Scaffold(
          appBar: new AppBar(
            title: new Text('20200507 垂直布局'),
          ),

          // 垂直布局, 内容是默认居中, 在 body 上增加 Cneter 就是居中

          body: Center(
            child: Column(
              // 1、设置对齐的方式
              // 副轴
              crossAxisAlignment: CrossAxisAlignment.start,
              // 主轴
              mainAxisAlignment: MainAxisAlignment.center,

              children: <Widget>[
                new Text('垂直布局'),
                new Text('垂直布局 垂直布局 垂直布局'),
                Expanded(child: new Text('灵活布局 Expanded垂直布局 垂直布局 垂直布局')),
                // 这里的直接掉到最下面去了
                new Text('垂直布局'),
              ],
            ),
          )

          // body: Column(

          //   // 1、设置对齐的方式
          //   // 副轴
          //   crossAxisAlignment: CrossAxisAlignment.start,
          //   // 主轴
          //   mainAxisAlignment:MainAxisAlignment.center,

          //   children: <Widget>[

          //     new Text(
          //       '垂直布局'
          //     ),

          //     new Text(
          //       '垂直布局 垂直布局 垂直布局'
          //     ),

          //     new Text(
          //       '垂直布局'
          //     ),

          //   ],
          // ),

          ),
    );
  }
}
