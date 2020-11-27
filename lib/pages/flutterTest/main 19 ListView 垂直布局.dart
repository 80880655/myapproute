// 快捷键： flm
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// 自定义组件
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Flutter Demo')),
        body: HomeContent(),
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180.0,
      child: ListView(
        // 水平布局
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            // height: 180.0,
            width: 180.0,
            color: Colors.red,
          ),
          Container(
            // height: 180.0,
            width: 180.0,
            color: Colors.yellowAccent,

            child: ListView(
              children: <Widget>[
                Image.network('https://pics6.baidu.com/feed/55e736d12f2eb9383152eb3f53d02a33e4dd6f7d.jpeg?token=726f051005c7ec6f1e74faffa3407ed2'),
                Text('文本内容'),
              ],
            ),
          ),
          Container(
            // height: 180.0,
            width: 180.0,
            color: Colors.blue,
          ),
          Container(
            // height: 180.0,
            width: 180.0,
            color: Colors.orange,
          ),
        ],
      ),
    );
  }
}
