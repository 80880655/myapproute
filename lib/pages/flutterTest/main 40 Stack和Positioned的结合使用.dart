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
    // 时间：2002/5/20 23:19分  Stack 层叠组件 和定位。

    // 练习： 如果是多个组件应该如何定位呢？
    // 需要使用 Stack 和 Align， Stack 和 Positioned  进行组合使用

    // 使用 Stack 组件来层叠显示
    return Center(
      child: Container(
        height: 400.0,
        width: 300.0,
        color: Colors.redAccent,

        // 发现不会的时候 就鼠标点击 Stack进去看看就知道需要传递的参数。
        child: Stack(
          // alignment: Alignment.center,
          children:<Widget>[

            // 使用 Stack 和 Positioned  进行组合使用

            Positioned(
              bottom: -10,
              child: Icon(Icons.home,size: 40.0, color: Colors.white,),
            ),

            Positioned(
              left: 10,
              child: Icon(Icons.security,size: 40.0, color: Colors.white,),
            ),

            Positioned(
              right: 10,
              bottom: 10,
              child: Icon(Icons.search,size: 40.0, color: Colors.white,),
            ),






            // // 使用Align组件,来包裹，对里面的每一个元素进行定位
            // Align(
            //   alignment: Alignment.topLeft,
            //   child: Icon(Icons.home,size: 40.0, color: Colors.white,),
            // ),

            // Align(
            //   alignment: Alignment.center,
            //   child: Icon(Icons.search,size: 40.0, color: Colors.white,),
            // ),

            // Align(
            //   alignment: Alignment.topRight,
            //   child: Icon(Icons.security,size: 40.0, color: Colors.white,),
            // ),
            
            // // 此时图标是 层叠在一起的。 这里需要单独的定位
            // Icon(Icons.home,size: 40.0, color: Colors.white,),
            // Icon(Icons.search,size: 30.0, color: Colors.white,),
            // Icon(Icons.security,size: 60.0, color: Colors.white,),

          ]
        ),
      ),
    );
  }
}
