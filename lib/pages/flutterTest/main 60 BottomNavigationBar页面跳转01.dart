// 快捷键： flm
import 'package:flutter/material.dart';
import '../tabs.dart';

void main() {
  runApp(MyApp());
}

/*
  时间：2020/6/1 17:43分
    1、引入 'package:myapp/page/tabs.dart'; 包； 将页面拆分成几部分.
    2、实现目标：
      点击底部的导航栏，进行 Body 页面的切换。
    3、实现步骤：
      3.1 引入页面； 在 tabs.dart 中引入对应的页面
*/

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Tabes());
  }
}
