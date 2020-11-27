// 快捷键： flm
import 'package:flutter/material.dart';


void main() {
  runApp( 
    MyApp()
  );
}

// 自定义组件
class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // 返回自定义组件
    // return Center(
    //   child:Text('XXXX'),
    // );

    return MaterialApp(
      home: HomeContent(),
    );

  }
}


class HomeContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  Center(
      // Container 相当于前端的div
      child: Container(
        child: Text('文本内容！！'),
        height: 300.0,
        width: 300.0,
        decoration: BoxDecoration(
          color: Colors.yellow,
          border: Border.all(
            color:Colors.blue,
            width:2.0,
            
          )
        ),
      ),
    );
  }
  
}
