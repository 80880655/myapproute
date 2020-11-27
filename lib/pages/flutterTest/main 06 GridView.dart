import 'package:flutter/material.dart';
// import 'dart:core';




// modify:gaofeng 2020/5/7
void main() => runApp(MyApp());




// 创建类
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '2020/5/7,Demo02 ListView',
      home: Scaffold(
        appBar: new AppBar(title: new Text('2020/5/7,Demo02 GridView')),

        body: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            // 纵轴
            mainAxisSpacing: 2.0,
            // 横轴
            crossAxisSpacing: 2.0,
            // 横竖比, 宽度/高度
            // childAspectRatio: 1.0,
            childAspectRatio: 0.7,
            
          ),

          children: <Widget>[
            new Image.network('http://img5.mtime.cn/mg/2020/05/07/120356.96285090_285X160X4.jpg',fit: BoxFit.cover),

            new Image.network('http://img5.mtime.cn/mg/2020/05/07/103226.85784290_285X160X4.jpg',fit: BoxFit.cover),
            
            new Image.network('http://tools.cocoachina.com/uploads/logo/20151207/f9116a7a2b9d3eb9b8277b5df0bf5f3c.gif',fit: BoxFit.cover),
            
            new Image.network('http://tools.cocoachina.com/uploads/logo/20151111/e28247f529911e00b801d45f0026a65a.jpg',fit: BoxFit.cover),
            
            new Image.network('http://tools.cocoachina.com/uploads/logo/20151120/f492b9f035767a9a317b34e9a8541d76.gif',fit: BoxFit.cover),

            new Image.network('http://img5.mtime.cn/mg/2020/05/07/101148.88084307_285X160X4.jpg',fit: BoxFit.cover),
            
            new Image.network('http://tools.cocoachina.com/uploads/logo/20151112/e5e29bdbdc9563f20ad10a3e7df35545.jpg',fit: BoxFit.cover),
            
            new Image.network('http://img5.mtime.cn/mg/2020/05/07/100611.32439631_285X160X4.jpg',fit: BoxFit.cover),
            

          ],
        ),



        // 写法1：下面的代码可以实现。 
        // body: GridView.count(
        //   padding: const EdgeInsets.all(20.0),

        //   // 网格的间距
        //   crossAxisSpacing: 10.0,

        //   crossAxisCount: 2,

        //   children: <Widget>[
        //     const Text('Flutter UIKit 1'),
        //     const Text('Flutter UIKit 2'),
        //     const Text('Flutter UIKit 3'),
        //     const Text('Flutter UIKit 4'),
        //     const Text('Flutter UIKit 5'),
        //     const Text('Flutter UIKit 6'),

        //   ],
        // ),


      ),
    );
  }
}
