import 'package:flutter/material.dart';
// import 'dart:core';

void main()=> runApp(MyApp());


// 创建类
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Welcom to Flutter GaoFeng',
      
      // home 窗体的主题， Scaffold 脚手架，有了这个就可以搭建内容了。
      home: Scaffold(
        // 文件上面的栏目
        appBar: AppBar(
          title: Text('Flutter Demo!')     
        ),

        body: Center(
          child:new ListView(
            children: <Widget>[
              /*
                ListView ， 在body下进行扩展
                2020/5/5 18:30
              */
              new ListTile(
                leading: new Icon(Icons.phonelink_setup),
                title: new Text('phonelink_setup'),
              ),
              new ListTile(
                leading: new Icon(Icons.photo_camera),
                title: new Text('photo_camera'),
              ),
              new ListTile(
                leading: new Icon(Icons.add_call),
                title: new Text('add_call'),
              ),


              new Image.asset(
                'images/3.0x/1.jpg',
                fit:BoxFit.contain,
              ),
              new Image.asset(
                'images/3.0x/2.jpg',
                fit:BoxFit.contain,
              ),
              new Image.asset(
                'images/3.0x/3.jpg',
                fit:BoxFit.contain,
              ),
              new Image.asset(
                'images/3.0x/4.jpg',
                fit:BoxFit.contain,
              ),


            ],
          ),

        ),




        // // 页面
        // // 居中，Center 就是一个布局组件，就是将内容居中，组件里面嵌套内容组件 child
        // body: Center (
        //   // child: Text(
        //   //   'Hello ++World11!!12---132月121321acb3213213213123213213211',
        //   //   // 文本的样式
        //   //   textAlign: TextAlign.left,
        //   //   // 显示的最大行数
        //   //   maxLines: 2,
        //   //   // 文本的内容，最后显示为 3个点
        //   //   overflow: TextOverflow.ellipsis,
        //   //   // fade 文本的渐变效果，最常用还是 ellipsis 属性
        //   //   // overflow: TextOverflow.fade,
            
        //   //   style: TextStyle(
        //   //     // 字体大小
        //   //     fontSize:25.0,
        //   //     // 字体颜色
        //   //     color: Color.fromARGB(255, 255, 125, 125),
        //   //     // 下划线
        //   //     decoration: TextDecoration.underline,
        //   //     // 实线
        //   //     decorationStyle: TextDecorationStyle.solid,
        //   //   ),
        //   // ),

          /*
            Container
          */
          
          // child: Container(
          //   child: new Text('Hellow XXX',style: TextStyle(fontSize: 40.0)),
          //   alignment: Alignment.topLeft,  // alignment 对齐 对准属性
          //   width: 500.0,
          //   height: 400.0,
          //   // color:Colors.lightBlue,
          //   // padding: const EdgeInsets.all(40.0),
          //   padding: const EdgeInsets.fromLTRB(10.0, 10.0, 0, 0),  // 上下左右 的属性
            
          //   margin:const EdgeInsets.all(10.0),
          //   // margin: const EdgeInsets.fromLTRB(40.0, 50.0, 0, 0),  //外边距

          //   // 渐变色, decoration , border
          //   decoration: new BoxDecoration(
          //     gradient:const LinearGradient(
          //       colors:[Colors.lightBlue,Colors.greenAccent,Colors.purple],
          //     ),
          //     border: Border.all(width:5.0,color:Colors.red),

          //   ),
          // ),

        //   /*
        //     Image
        //   */
        //   // child: Container(
        //   //   // child: new Image.file(),  //手机目录

        //   //   // child: new Image.network(
        //   //   //   'https://pg-ad-b1.ws.126.net/yixiao/24978/44e5009086fbd643363737b7d4310575.jpg',
        //   //   //   // fit: BoxFit.contain,
        //   //   //   // fit: BoxFit.fill,

        //   //   //   fit: BoxFit.fitHeight,  // 纵向填充满
        //   //   // ),  // 网络图片

        //   //   child: new Image.asset(
        //   //     'images/3.jpg',
        //   //     fit:BoxFit.contain,
        //   //     // color: Colors.purple,
        //   //     // colorBlendMode:BlendMode.modulate,   // 颜色混合模式
        //   //     // repeat: ImageRepeat.repeat,
        //   //     repeat: ImageRepeat.repeatY,
        //   //   ),

        //   //   width: 700.0,
        //   //   height: 300.0,
        //   //   color:Colors.lightBlue,   
        //   //   // child: new Image.asset(
        //   //   //   'image/3.jpg'
        //   //   // ),  // 本地图片
        //   // ),

        // ),
      ),
    );
  }
}




// // 1、创建类
// class MyApp extends StatelessWidget(){

//   // 重构方法
//   @override
//   Widget build(BuildContext context){


//     );
//   }
// }