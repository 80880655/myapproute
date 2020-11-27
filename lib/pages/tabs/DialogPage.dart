import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:myapproute/components/LoadingDialog.dart';
import '../../components/MyDialog.dart';

class DialogPage extends StatefulWidget {
  @override
  _DialogPageState createState() => _DialogPageState();
}

class _DialogPageState extends State<DialogPage> {
  // 方法1：
  // _alertDialog()  {
  //   showDialog(
  //       context: context,
  //       builder: (context) {
  //         return AlertDialog(
  //           title: Text('提示信息！'),
  //           content: Text('您确定要删除吗？'),
  //           actions: <Widget>[
  //             RaisedButton(
  //               child: Text('取消'),
  //               onPressed: () {
  //                 print('取消');

  //                 //取消
  //                 Navigator.pop(context);
  //               },
  //             ),
  //             FlatButton(
  //               child: Text('确定'),
  //               onPressed: () {
  //                 print('确定');
  //               },
  //             )
  //           ],
  //         );
  //       });
  // }


  _alertDialog() async {
    var result = await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('提示信息！'),
            content: Text('您确定要删除吗？'),
            actions: <Widget>[
              RaisedButton(
                child: Text('取消'),
                onPressed: () {
                  print('取消');
                  //取消
                  Navigator.pop(context, 'cancle');
                },
              ),
              FlatButton(
                child: Text('确定'),
                onPressed: () {
                  print('确定');
                  Navigator.pop(context, 'OK');
                },
              )
            ],
          );
        });

    print(result);
  }

  // 使用 async  和 await 的方式，等待执行结果
  _simpleDialog() async {
    var result = await showDialog(
        context: context,
        builder: (context) {
          return SimpleDialog(
            title: Text('选择内容'),
            children: <Widget>[
              SimpleDialogOption(
                  child: Text('Option A'),
                  onPressed: () {
                    print('Option A');
                    Navigator.pop(context, 'A');
                  }),
              Divider(),
              SimpleDialogOption(
                  child: Text('Option B'),
                  onPressed: () {
                    print('Option B');
                    Navigator.pop(context, 'B');
                  }),
              Divider(),
              SimpleDialogOption(
                  child: Text('Option C'),
                  onPressed: () {
                    print('Option C');
                    Navigator.pop(context, 'C');
                  }),
            ],
          );
        }).then((value){
          // 2020/7/30 14:14 分，执行逻辑。

          print('2020/7/30 14:14 分，执行逻辑；执行完毕之后的逻辑');


        });

    print(result);
  }

  _modalBottomSheet() async {
    var result = await showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            height: 260.0,
            child: Column(
              children: <Widget>[
                ListTile(
                  title: Text('分享 A'),
                  onTap: () {
                    Navigator.pop(context, '分享 A');
                  },
                ),
                Divider(),
                ListTile(
                  title: Text('分享 B'),
                  onTap: () {
                    Navigator.pop(context, '分享B');
                  },
                ),
                Divider(),
                ListTile(
                  title: Text('分享 C'),
                  onTap: () {
                    Navigator.pop(context, '分享 C');
                  },
                ),
              ],
            ),
          );
        });
    print(result);
  }

  //第三方：https://pub.dev/packages/fluttertoast#-installing-tab-
  showLongToast() {
    Fluttertoast.showToast(
      msg: "This is Colored Toast with android duration of 5 Sec",
      toastLength: Toast.LENGTH_SHORT,

      gravity: ToastGravity.CENTER,
      // 调整位置
      // gravity: ToastGravity.BOTTOM,
      backgroundColor: Colors.red,
      textColor: Colors.white,
      fontSize: 16.0,

      timeInSecForIosWeb: 5,
    );
  }

  void showWebColoredToast() {
    Fluttertoast.showToast(
      msg: "This is Colored Toast with android duration of 5 Sec",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: Colors.red,
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }

  void showColoredToast() {
    Fluttertoast.showToast(
        msg: "This is Colored Toast with android duration of 5 Sec",
        toastLength: Toast.LENGTH_SHORT,
        backgroundColor: Colors.red,
        textColor: Colors.white);
  }

  void showShortToast() {
    Fluttertoast.showToast(
        msg: "This is Short Toast",
        toastLength: Toast.LENGTH_SHORT,
        timeInSecForIosWeb: 1);
  }

  void showTopShortToast() {
    Fluttertoast.showToast(
        msg: "This is Top Short Toast",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.TOP,
        timeInSecForIosWeb: 1);
  }

  void showCenterShortToast() {
    Fluttertoast.showToast(
        msg: "This is Center Short Toast",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1);
  }

  void cancelToast() {
    Fluttertoast.cancel();
  }

  Widget _loadMoreWidget() {
    return Container(
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 10),
            height: 20,
            width: 20,
            child: CircularProgressIndicator(
              strokeWidth: 2.0,
              backgroundColor: Colors.grey,
              // value: 0.2,
              valueColor: new AlwaysStoppedAnimation<Color>(Colors.grey),
            ),
          ),
          Container(
            child: Text("正在加载中...",
                style: TextStyle(color: Color(0xff666666), fontSize: 12)),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Diaglog 样式')),
        body:
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                  child: Text('alert 弹出框- AlertDialog'),
                  onPressed: _alertDialog),
              // SizedBox(height: 20.0),
              RaisedButton(
                  child: Text('select 弹出框- SimpleDialog，点击之后继续执行方法'),
                  onPressed: _simpleDialog),
              // SizedBox(height: 20.0),
              RaisedButton(
                  // child: Text('ActionSheet 底部弹出框- showModalBottomSheet'),
                  child: Text('ActionSheet底部弹出框'),
                  onPressed: _modalBottomSheet),
              // SizedBox(height: 20.0),
              RaisedButton(
                  child: Text('toast-flutterroast 第三方库01'),
                  // 样式1：
                  onPressed: showLongToast),

              RaisedButton(
                  child: Text('toast-flutterroast 第三方库02'),
                  // 样式1：
                  // onPressed: showLongToast),
                  onPressed: showColoredToast),

              RaisedButton(
                  child: Text('toast-flutterroast 第三方库03'),
                  // 样式1：
                  // onPressed: showLongToast),
                  onPressed: showCenterShortToast),



              // 时间：2020/6/18 10:55分
              // SizedBox(height: 20.0),
              RaisedButton(
                  child: Text('自定义Dialog'),

                  // 自定义 Dialog
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return MyDialog('关于我们', '内容部分');
                        });
                  }),

              // 时间：2020/6/18 11:47分
              // SizedBox(height: 20.0),
              RaisedButton(
                  child: Text('定时自定义Dialog'),

                  // 自定义 Dialog
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return MyDialog('定时自定义Dialog', '内容部分');
                        });
                  }),

              RaisedButton(
                  child: Text('加载画面Dialog'),

                  // 自定义 Dialog
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return LoadingDialog(
                          text: '账号登录中...',
                        );
                      },
                    );
                  }),
            ],
          )
        ]));
  }
}
