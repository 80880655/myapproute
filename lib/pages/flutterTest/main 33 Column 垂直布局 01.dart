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
    // 定义的 IconContainer 的构造函数为 命名参数，所以  color 和 size 需要使用名称
    // return IconContainer(Icons.home,color: Colors.red);

    // 返回一个
    // return IconContainer();

    // 返回多个
    return Container(
      height: 800.0,
      width: 400.0,
      color: Colors.pink,
      child: Column(
        // X 轴
        mainAxisAlignment: MainAxisAlignment.center,

        // Y轴  这个需要和 容器一起使用
        // crossAxisAlignment: CrossAxisAlignment.start,        // 最上面
        // crossAxisAlignment: CrossAxisAlignment.center,     // 垂直中间
        crossAxisAlignment: CrossAxisAlignment.end,       // 底部
        
        children: <Widget>[
          IconContainer(
            Icons.search,
            color: Colors.black,
          ),
          IconContainer(
            Icons.home,
            color: Colors.blueAccent,
          ),
          IconContainer(
            Icons.select_all,
            color: Colors.orange,
          ),
        ],
      ),
    );
  }
}

// 时间：2020/5/20 20:48分 Column 垂直布局。
// 使用 Column 垂直布局。
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

    // return Container(
    //   height: 100.0,
    //   width: 100.0,
    //   color: Colors.red,
    //   child: Center(child: Icon(Icons.home,size: 32.0,color: Colors.white,)),
    // );
  }
}
