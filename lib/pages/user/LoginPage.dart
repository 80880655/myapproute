import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  // const SearchPage({Key key}) : super(key: key);

  final arguments;
  LoginPage({this.arguments});

  @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(
  //       title: Text('搜索页面'),
  //     ),
  //     body: Text('搜索页面，SearchPage${arguments != null ? arguments['id'] : '0'}'),
  //   );
  // }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('第一步，注册页面'),
      ),
      body: ListView(
        children: <Widget>[
          Text(
              '第一步，注册页面，SearchPage${arguments != null ? arguments['id'] : '0'}'),
          SizedBox(height: 40.0),
          RaisedButton(
              child: Text('下一步'),
              onPressed: () {
                // Navigator.pushNamed(context, '/home');
                Navigator.pushNamed(context, "/search", arguments: {
                  "id": "1233455 Test SearchPage页面",
                });
              })
        ],
      ),
    );
  }
}
