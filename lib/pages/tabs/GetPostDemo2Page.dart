import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:http/http.dart' as http;
import 'package:myapproute/components/LoadingDialog.dart';

//   /getPostDemo2Page

class GetPostDemo2Page extends StatefulWidget {
  @override
  _GetPostDemo2PageState createState() => _GetPostDemo2PageState();
}

class _GetPostDemo2PageState extends State<GetPostDemo2Page> {
  List _list = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    // 第一步，页面一加载就执行这个方法；
    this._getData();
  }

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
      appBar: AppBar(title: Text('GetPostDemo2PageIT营请求数据Demo')),
      // body: Text('请求数据'),

      body: this._list.length > 0
          ? ListView(
              children: this._list.map((value) {
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
          // : Text('加载中...')

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
            )

              // child: Center(
              //   child: SpinKitRing(
              //     color: Colors.blueAccent,
              //     size: 40.0,
              //   ),
              // ),

              ),

      // :Column(
      //   children:<Widget>[
      //     Text(

      //     ),
      //     showDialog(
      //           context: context,
      //           builder: (context) {
      //             return LoadingDialog(
      //               text: '账号登录中...',
      //             );
      //           },
      //         );
      //   ]
      // )

      // : showDialog(
      //     context: context,
      //     builder: (context) {
      //       return LoadingDialog(
      //         text: '数据加载中...',
      //       );
      //     })
    );

    // : showDialog(
    //     context: context,
    //     builder: (context) {
    //       return LoadingDialog(
    //         text: '数据加载中...',
    //       );
    //     },
    //   ));
  }
}
