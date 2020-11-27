import 'package:flutter/material.dart';

class LoginTextField extends StatefulWidget {
  @override
  _LoginTextFieldState createState() => _LoginTextFieldState();
}

class _LoginTextFieldState extends State<LoginTextField> {

  /*
    时间：2020/6/16 10:01分
    1、给文本框增加默认的值。
    2、获取文本框的值。
  */

  // 初始化赋值
  var _username=new TextEditingController();

  var _password;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _username.text='初始值';
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('表单演示页面'),
      ),


      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(children: <Widget>[


          SizedBox(height:10),
          TextField(
            decoration: InputDecoration(
              // 暗示文字
              hintText: '请输入搜索的内容',
            ),
            
            //给TextField 赋值
            controller: this._username,

            // 时间：2020/6/16 10:15分  通过 onChanged 来获取文本框的值改变
            onChanged: (val){

              setState(() {
                this._username.text=val;
              });
              
            },
          ),

          SizedBox(height:40),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              // 暗示文字
              hintText: '密码',
            ),
            
            //给TextField 赋值
            // controller: this._password,
            
            onChanged: (val){

              setState(() {
                this._password=val;
              });
              
            },
          ),

          SizedBox(height:20),
          Container(
            // 自适应的宽度
            width: double.infinity,

            child:RaisedButton(
              child:Text('登录'),
              color: Colors.blue,
              textColor: Colors.white,
              onPressed:(){
                print(this._username.text.trim());
                print(this._password.toString());
              },
            )
          )

        ]),
      ),
    );
  }
}

class LoginTextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
