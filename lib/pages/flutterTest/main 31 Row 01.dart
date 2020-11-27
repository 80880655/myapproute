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
    return Row(
      children: <Widget>[
        IconContainer(Icons.search,color: Colors.black,),

        IconContainer(Icons.home,color: Colors.blueAccent,),

        IconContainer(Icons.select_all,color: Colors.orange,),

      ],
    );
  }
}


// 时间：2020/5/20 17:22分 Row 布局。
// 使用 Row 来布局。
class IconContainer extends StatelessWidget {

  double size=32.0;
  Color color;
  IconData icon;

  // 构造函数的 命名参数
  IconContainer(this.icon,{this.color,this.size}){

  }

  @override
  Widget build(BuildContext context) {

    return Container(
      height: 100.0,
      width: 100.0,
      color: this.color,
      child: Center(child: Icon(this.icon,size: this.size,color: Colors.white,)),
    );

    // return Container(
    //   height: 100.0,
    //   width: 100.0,
    //   color: Colors.red,
    //   child: Center(child: Icon(Icons.home,size: 32.0,color: Colors.white,)),
    // );
  }
}
