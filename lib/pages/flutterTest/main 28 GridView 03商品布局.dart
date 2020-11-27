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
  // 时间：2020/5/19 16:54分 循环遍历 一组Widget的组件。
  // 2、 将listData的数据循环到 这个里面，实现一个商品的布局。

  List<Widget> _getListData() {
    List<Widget> list = new List();

    var tempList=listData.map((value){

      return Container(

        child:Column(
          
          children: <Widget>[

            Image.network(value["imageUrl"]),

            SizedBox(
              height:30,
            ),

            Text(value["title"],

              textAlign: TextAlign.left,

              style: TextStyle(
                fontSize:18.0,
              ),
            
            ),

          ],

        ),

        // 设置边框
        decoration: BoxDecoration(
          border:Border.all(
            color:Colors.black38,
            // color:Color.fromRGBO(233, 233, 233, 0.9)
            width: 1.0,

          )
        ),

      );

    }); 

    // 【注意：这里一定是 toList 转换一下数组】； map里面的数据是 （'XXXX','XXXX'）
    return tempList.toList();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      // 显示3列， 一行的Widget 数量
      crossAxisCount: 2,

      // 左右的缝隙距离
      crossAxisSpacing: 2.0,

      // 上下缝隙距离
      mainAxisSpacing: 2.0,

      // 直接设置高度无效， 必须通过 childAspectRatio 宽和高的比例来实现;  标识 宽度/高度 的系数
      childAspectRatio: 0.8,


      // children: <Widget>[
      //   Text('这是一个文本'),
      //   Text('这是一个文本'),
      //   Text('这是一个文本'),
      //   Text('这是一个文本'),
      //   Text('这是一个文本'),
      //   Text('这是一个文本'),
      //   Text('这是一个文本'),
      //   Text('这是一个文本'),
      //   Text('这是一个文本'),
      // ],

      // 调用这个方法
      children: this._getListData(),



    );
  }
}
