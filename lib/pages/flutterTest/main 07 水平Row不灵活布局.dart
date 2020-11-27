import 'package:flutter/material.dart';
// import 'dart:core';




// modify:gaofeng 2020/5/7 不灵活的布局
void main() => runApp(MyApp());




// 创建类
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Row Widget Demo',
      home: Scaffold(

        // 设置 AppBar 的背景色
        appBar: new AppBar(
          title: new Text('20200507,水平方向布局'),
          elevation: 2.5,
          // brightness: Brightness.dark,
          // backgroundColor: Colors.redAccent,
          flexibleSpace: Container(
            decoration:BoxDecoration(
              gradient:LinearGradient(
                colors:[
                  Color(0xFF0018EB),
                  Color(0xFF01C1D9),
                ],
                begin:Alignment.bottomCenter,
                end: Alignment.topCenter
              ),
            ),
          ),
        ),

        body: new Container(
          // 布局
          child: new Row(
            children: <Widget>[
              // RaisedButton 凸起的按钮
              new RaisedButton(
                // 点击事件
                onPressed: (){
                  
                },

                color: Colors.redAccent,
                child:new Text(
                  'Red Button'
                ),
              ),

              new RaisedButton(
                // 点击事件
                onPressed: (){
                  
                },

                color: Colors.orangeAccent,
                child:new Text(
                  'orange Button'
                ), 
              ),

              new RaisedButton(
                // 点击事件
                onPressed: (){        
                },

                color: Colors.blueAccent,
                child:new Text(
                  'blue Button'
                ),               
              ),

              new RaisedButton(
                // 点击事件
                onPressed: (){
                  
                },

                color: Colors.yellowAccent,
                child:new Text(
                  'yellow Button'
                ),  
              )

            ],
          ),
        ),

      ),
    );
  }
}
