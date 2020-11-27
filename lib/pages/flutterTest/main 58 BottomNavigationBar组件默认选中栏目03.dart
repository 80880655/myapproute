// 快捷键： flm
import 'package:flutter/material.dart';
// import 'dart:mirrors';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage());
  }
}

/*
  时间：2020/5/26 10:13 StatefulWidget
  目标：
    1、练习 BottomNavigationBar  组件，实现底部导航条的效果。
    2、实现 使用 StatefulWidget 动态组件实现.
    3、当底部显示4个的时候，底部不显示任何的内容。
      主要原因为：如果是显示3个则没有问题，如果是显示4个则有问题，所选项目的背景颜色，在这个假设每个项目都有不同的背景，颜色和背景颜色会与白色形成很好的对比。
    4、默认选中底部栏目 
*/

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Text Test')),
      body: Text('body'),
      bottomNavigationBar: BottomNavigationBar(

        // 默认选中
        currentIndex: 0,

        // 打印用户点击的 底部菜单 栏目序号
        // onTap: (int index){
        //   print(index);
        // },
        onTap: (int x){
          print(x);
        },

        items: [
          BottomNavigationBarItem(title: Text('主页'), icon: Icon(Icons.home,)),
          BottomNavigationBarItem(title: Text('查询'), icon: Icon(Icons.search,)),
          BottomNavigationBarItem(title: Text('分类'), icon: Icon(Icons.category,)),
          BottomNavigationBarItem(title: Text('设置'), icon: Icon(Icons.settings,)),
        ],

        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
