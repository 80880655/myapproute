import 'package:flutter/material.dart';
import 'package:myapproute/res/Registration.dart';

class RegistrationPage extends StatefulWidget {
  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  int sex = 1;
  var username;
  var password;
  String info;

  // 爱好
  List<Widget> _getHobby() {
    List<Widget> tempList = [];
    for (var i = 0; i < hobby.length; i++) {
      // tempList.add(Text(hobby[i]["title"] + ':'));

      // tempList.add(Checkbox(
      //   value: hobby[i]["checked"],
      //   onChanged: (val) {
      //     setState(() {
      //       hobby[i]["checked"] = val;
      //     });
      //   },
      // ));

      tempList.add(
        Row(
          children: <Widget>[
            Text(hobby[i]['title'] + ':'),
            Checkbox(
              value: hobby[i]["checked"],
              onChanged: (val) {
                setState(() {
                  hobby[i]["checked"] = val;
                });
              },
            )
          ],
        ),
      );
    }

    return tempList;
  }

  void _sexChange(val) {
    setState(() {
      this.sex = val;
      print(this.sex);
    });
  }

  void _textChange(val) {
    setState(() {
      this.username = val;
      print(this.username);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('注册页面')),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Column(children: <Widget>[
            SizedBox(height: 10.0),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: '用户名',
              ),
              onChanged: _textChange,
            ),
            SizedBox(height: 10.0),
            TextField(
              // 密码框
              obscureText: true,
              decoration: InputDecoration(
                // 暗示文字
                hintText: '密码',
                border: OutlineInputBorder(),
                labelText: '密码',
              ),

              onChanged: (val) {
                setState(() {
                  this.password = val;
                });
              },
            ),
            Divider(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,

              // 水平居中  mainAxisAlignment: MainAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Row(children: <Widget>[
                  Text('男'),
                  Radio(
                    value: 1,
                    groupValue: this.sex,
                    onChanged: this._sexChange,
                  ),
                  Text('女'),
                  Radio(
                    value: 2,
                    groupValue: this.sex,
                    // onChanged: (val) {
                    //   setState(() {
                    //     this.sex = val;
                    //   });
                    // }
                    onChanged: this._sexChange,
                  )
                ]),
              ],
            ),

            Divider(),
            // 爱好
            Column(
              // children: <Widget>[],

              // 这里的方法 使用带括号的，这样就是执行这个方法
              children: this._getHobby(),
            ),

            // 信息描述
            Divider(),
            TextField(
                maxLines: 4,
                decoration: InputDecoration(
                    hintText: "描述信息", 
                    //外边框
                    border: OutlineInputBorder()),
                onChanged: (val) {
                  setState(() {
                    this.info=val;
                  });
                }),

            Divider(),
            Container(
              width: double.infinity,
              child: RaisedButton(
                child: Text('提交信息'),
                color: Colors.blue,
                textColor: Colors.white,
                onPressed: () {
                  print(this.sex);
                  print(this.username);
                  print(this.password);

                  // 这样就获取了页面所有的信息。
                  print(hobby);
                  print(this.info.toString());
                },
              ),
            )
          ]),
        ));
  }
}
