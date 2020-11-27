import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'dart:convert';

class DioDemoPage extends StatefulWidget {
  @override
  _DioDemoPageState createState() => _DioDemoPageState();
}

class _DioDemoPageState extends State<DioDemoPage> {

  // 【重点】：如果这里 是 List _content; 没有初始化，那么在加载的时候就会报错，页面就是一瞬间
  List _content = [];

  @override
  void initState() {
    _getData();
    super.initState();

    // if (_getData()) {
    //   super.initState();
    // } else {
    // // 延迟2秒
    //   Future.delayed(Duration(milliseconds: 2000), () {
    //     super.initState();
    //   });
    // }
  }

  // Dio请求数据：
  _getData() async {
    // Response response=await Dio.get('http://a.itying.com/api/productlist');
    // var apiUrl="http://a.itying.com/api/productlist";
    // Response response=await Dio.get(apiUrl);
    // print(response);

    /*
      时间：2020/6/19 16:34分
      1、上面的代码不知道怎么回事， 就是 get 报错；
      2、copy 官网的方法即可，没有问题。 下面的代码为官网的代码，没有报错。
      3、 需要注意： 单独使用 Dio 的时候，需要先实例化

      4、 和 GetPostDemo2Page 区别在于 ，
     */

    try {
      Response response =
          await Dio().get("http://a.itying.com/api/productlist");

      // 2020/11/16 15:10  放在里面之后界面数据进行重新渲染
      setState(() {
        // response.data 才是里面的真实数据
        print(response.data is String); // 返回 false
        print(response.data is Map); // 返回 true
        // this._content = json.encode(response.data);

        // 转成了 JSON， 下面需要使用 Map
        // this._content = json.encode(response.data['result']);

        this._content = response.data['result'];
      });

      print(response);
    } catch (e) {
      print(e);
    }
  }

  _postData() async {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('使用Dio组件来请求数据')),
      // body: Text('${this._content}'),

      body: this._content.length > 0
          ? ListView(
              children: this._content.map((value) {
                return Column(
                  children: <Widget>[
                    ListTile(
                      title: Text(value["title"].toString()),
                      subtitle: Text(value["pid"].toString()),
                      // onTap: () {
                      //   return ListView(
                      //     children: value["list"].map((value) {
                      //       return ListTile(
                      //         title: Text(value['title'].toString()),
                      //       );
                      //     }).tolist(),
                      //   );
                      // },
                    ),
                    Divider(),
                  ],
                );
              }).toList(),
            )
          // Text('${this._content.toString()}')
          // : Text('加载中')

          : Align(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Center(
                    child: SpinKitRing(
                      color: Colors.blueAccent,
                      size: 40.0,
                    ),
                  ),
                  Text('加载中...')
                ],
              ),
            ),
    );
  }
}
