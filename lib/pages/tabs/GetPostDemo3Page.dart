import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:http/http.dart' as http;
import 'package:myapproute/components/LoadingDialog.dart';

class GetPostDemo3Page extends StatefulWidget {
  @override
  _GetPostDemo3PageState createState() => _GetPostDemo3PageState();
}

class _GetPostDemo3PageState extends State<GetPostDemo3Page> {
  @override
  void initState() {
    super.initState();

    // _showLoading();
    _getData();
  }

  // _showLoading() {
  //   return showDialog(
  //     context: context,
  //     builder: (context) {
  //       return LoadingDialog(
  //         text: '账号登录中...',
  //       );
  //     },
  //   );
  // }


  /* 
    时间：2020/6/22 13:52 如果这里 声明 List,不赋值，那么页面会有短暂的错误页面，因为这里没有赋值。
  */
  // List _list;

  List _list=[];

  _getData() async {
    var apiUrl = "http://a.itying.com/api/productlist";
    var result = await http.get(apiUrl);

    // 请求数据成功
    if (result.statusCode == 200) {
      // print(result.body);
      setState(() {
        this._list = json.decode(result.body)['result'];

        print(this._list);
      });
    } else {
      print('faild${result.statusCode}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('使用 builder 来遍历数据')),

      // body: this._list.length > 0
      //     ? ListView.builder(
      //         itemCount: this._list.length,
      //         itemBuilder: (context, index) {
      //           // 循环遍历
      //           return ListTile(
      //             title: Text("${this._list[index]["title"]}"),
      //           );
      //         },
      //       )
      //     // : Column(
      //     //   children: _showLoading(),
      //     // )

      //     :Text('加载中...')


      body: this._list.length > 0
          ? ListView.builder(
              itemCount: this._list.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text("${this._list[index]["title"]}"),
                );
              },
            )
          : Align(
              child: Center(
                
                child: SpinKitRing(
                  color: Colors.redAccent,
                  size: 40.0,
                ),
              ),
            ),
    );
  }
}
