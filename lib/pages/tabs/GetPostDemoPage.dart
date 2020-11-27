import 'dart:convert' as convert;

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:myapproute/components/LoadingDialog.dart';

class GetPostDemoPage extends StatefulWidget {
  @override
  _GetPostDemoPageState createState() => _GetPostDemoPageState();
}

class _GetPostDemoPageState extends State<GetPostDemoPage> {
  /*
    时间：2020/6/19 10:29分
    1、初始化方法中定义Map 类型
  */

  String _news;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    // 第一步： 把Map 类型转换成json 字符串
    // Map userInfo = {"username": "张三", "age": 20};
    // var a = json.encode(userInfo);
    // print(userInfo is Map);  // 返回 true
    // print(a is String);  // 返回 true

    // 方法2： 下面的 userInfo2 为JSON的格式字符串。
    // 把 JSON格式转换成 Map 类型
    String userInfo2 = '{"username":"zhangsan","age":21}';

    Map u = convert.jsonDecode(userInfo2);

    print(u['username']);
  }

  // 第二步，Get 请求数据； 异步的方法，使用 async ，下面一定要用 await
  // 方法是异步的 所以 会有点慢，如果是同步的是怎么样的？

  _getData() async {
    // API地址：
    var url = "https://www.googleapis.com/books/v1/volumes?q={http}";

    var response = await http.get(url);

    if (response.statusCode == 200) {
      var jsonResponse = convert.jsonDecode(response.body);
      var itemCount = jsonResponse['totalItems'];

      setState(() {
        this._news = jsonResponse['totalItems'].toString();
      });

      // print('Number of books about http: $itemCount.');
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }
    ;
  }

  // IT 营：  http://a.itying.com/api/productlist

  // 请求数据
//   _postData() async {
//     var client = http.Client();
// try {
//   var uriResponse = await client.post('https://example.com/whatsit/create',
//       body: {'name': 'doodle', 'color': 'blue'});
//   print(await client.get(uriResponse.body.['uri']));
// } finally {
//   client.close();
// }
//   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Get Post 数据传输Demo')),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Wrap(
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Wrap(
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Text(this._news ?? '默认'),
                            RaisedButton(
                              child: Text('Get 获取服务器数据'),
                              // onPressed: () {
                              //   _getData();
                              // }
                              onPressed: _getData,
                            ),
                            RaisedButton(
                                child: Text('Post 方法演示'), onPressed: () {}),
                            RaisedButton(
                                child: Text(
                                    'Post/get方法演示，GetPostDemo2Page请求'),
                                onPressed: () {
                                  // showDialog(

                                  //   context: context,
                                  //   builder: (context) {
                                  //     return LoadingDialog(
                                  //       text: '账号登录中...',

                                  //     );
                                  //   },
                                  // );

                                  Navigator.pushNamed(
                                      context, "/getPostDemo2Page");
                                }),
                            RaisedButton(
                                child: Text('Post / get 方法演示，使用 builder 方法来使用'),
                                onPressed: () {
                                  // 方式1：延迟加载  Future.delayed
                                  // Future.delayed(Duration(milliseconds: 2000), () {

                                  //   Navigator.pushNamed(context, "/getPostDemo3Page");

                                  // });

                                  // 方式2：
                                  Navigator.pushNamed(
                                      context, "/getPostDemo3Page");
                                }),
                            RaisedButton(
                                child: Text('Post / get 方法 和第三方 loading 插件'),
                                onPressed: () {
                                  // 延迟加载  Future.delayed
                                  Future.delayed(Duration(milliseconds: 2000),
                                      () {
                                    Navigator.pushNamed(
                                        context, "/getPostDemo4Page");
                                  });

                                  // Navigator.pushNamed(context, "/getPostDemo3Page");
                                }),
                          ],
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
