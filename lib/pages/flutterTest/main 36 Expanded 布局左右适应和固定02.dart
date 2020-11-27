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
    // 时间：2020/5/20 21:08分  使用 Expanded 来布局， 实现 左边固定、右边自适应。
    return Row(
      children: <Widget>[


        IconContainer(
          Icons.home,
          color: Colors.blueAccent,
        ),


        Expanded(
          flex: 1,
          child: IconContainer(
            Icons.search,
            color: Colors.orangeAccent,
          ),
        ),


      ],
    );
  }
}

// 时间：2020/5/20 21:00分 Expanded 组件
// 使用 Expanded 组件
class IconContainer extends StatelessWidget {
  double size = 32.0;
  Color color;
  IconData icon;

  // 构造函数的 命名参数
  IconContainer(this.icon, {this.color, this.size}) {}

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      width: 80.0,
      color: this.color,
      child: Center(
          child: Icon(
        this.icon,
        size: this.size,
        color: Colors.white,
      )),
    );
  }
}
