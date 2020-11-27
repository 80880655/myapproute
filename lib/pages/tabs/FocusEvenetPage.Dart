import 'package:flutter/material.dart';

class FocusEvenetPage extends StatefulWidget {
  @override
  _FocusEvenetPageState createState() => _FocusEvenetPageState();
}

class _FocusEvenetPageState extends State<FocusEvenetPage> {
  FocusNode textFocus = FocusNode();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    textFocus.addListener(() {
      if (!textFocus.hasFocus) {
        print('失去焦点');
      } else {
        print('得到焦点');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('添加事件和事件监听1')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[


              Text('12121'),

              TextField(
                decoration: InputDecoration(
                  hintText: '请输入文字',
                ),
                keyboardType: TextInputType.text,
                textAlign: TextAlign.right,
                focusNode: textFocus,
              ),
              InkWell(
                  // 添加了自定义的监视事件，焦点
                  focusNode: textFocus,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: '请输入文字',
                    ),
                    keyboardType: TextInputType.text,
                    textAlign: TextAlign.right,
                    focusNode: textFocus,
                  ))
            ],
          )
        ],
      ),
    );
  }
}
