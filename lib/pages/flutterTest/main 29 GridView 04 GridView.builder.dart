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

  Widget _getListData(context, index) {
    return Container(
      child: Column(
        children: <Widget>[
          Image.network(listData[index]["imageUrl"]),
          SizedBox(
            height: 30,
          ),
          Text(
            listData[index]["title"],
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 14.0,
            ),
          ),
        ],
      ),

      // 设置边框
      decoration: BoxDecoration(
          border: Border.all(
        color: Colors.black87,
        // color:Color.fromRGBO(233, 233, 233, 0.9)
        width: 1.0,
      )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      // // 显示3列， 一行的Widget 数量
      // crossAxisCount: 2,
      // // 左右的缝隙距离
      // crossAxisSpacing: 2.0,
      // // 上下缝隙距离
      // mainAxisSpacing: 2.0,
      // // 直接设置高度无效， 必须通过 childAspectRatio 宽和高的比例来实现;  标识 宽度/高度 的系数
      // childAspectRatio: 0.8,

      /*
        需要设置 crossAxisCount、crossAxisSpacing、mainAxisSpacing、childAspectRatio 的属性
        点 GridView.builder 就知道方法builder， 需要使用 gridDelegate 来实现。
      */
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 2.0,
        mainAxisSpacing: 2.0,
        childAspectRatio: 0.8,
      ),

      // 两个参数
      // gridDelegate: null, itemBuilder: null
      itemCount: listData.length,

      // 将下面的代码抽离出去
      // itemBuilder: (context,index){
      //   this._getListData;
      // },
      itemBuilder: this._getListData,
    );

    
  }
}
