import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:myapproute/components/LoadingDialog.dart';

// 第三方的 loading 页面
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:myapproute/pages/tabs/GetPostDemo2Page.dart';

class GetPostDemo4Page extends StatefulWidget {
  @override
  _GetPostDemo4PageState createState() => _GetPostDemo4PageState();
}

class _GetPostDemo4PageState extends State<GetPostDemo4Page> {
  @override
  void initState() {
    super.initState();

    _getData();
  }

  List _list;

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
      //     ? ListView(
      //         children: this._list.map((value) {
      //           return Column(
      //             children: <Widget>[
      //               ListTile(
      //                 title: Text(value["title"].toString()),
      //                 subtitle: Text(value["pid"].toString()),
      //               ),
      //               Divider(),
      //             ],
      //           );
      //         }).toList(),
      //       )
      //     : Text('加载中...'));

      // body: SafeArea(child: Stack(
      //   children:<Widget>[
      //     Align(
      //       child:LayoutBuilder(
      //         builder:(context,_){
      //           return IconButton(
      //             icon: Icon(Icons.refresh),
      //             iconSize: 50.0,
      //             onPressed: (){
      //               Navigator.push(
      //                 context,
      //                 MaterialPageRoute<void>(
      //                     builder: (BuildContext context) => GetPostDemo2Page(),
      //                     fullscreenDialog: true,
      //                   ),
      //               );
      //             },
      //           );
      //         }
      //       )
      //     )
      //   ]
      // )),

      body: Column(
        children: <Widget>[
          SpinKitRotatingPlain(
            color: Colors.blueAccent,
            size: 30.0,
          ),
          SizedBox(height:10.0),
          SpinKitRotatingCircle(
            color: Colors.blueAccent,
            size: 30.0,
          ),
          SizedBox(height:10.0),
          SpinKitDoubleBounce(
            color: Colors.blueAccent,
            size: 30.0,
          ),
          SizedBox(height:10.0),


          // Loadging 
          SpinKitRing(
            color: Colors.redAccent,
            size: 30.0,
          ),



          SizedBox(height:10.0),
          SpinKitWave(
            color: Colors.blueAccent,
            size: 30.0,
          ),
          SizedBox(height:10.0),
          SpinKitWanderingCubes(
            color: Colors.blueAccent,
            size: 30.0,
          ),
          SizedBox(height:10.0),
          SpinKitFadingCube(
            color: Colors.blueAccent,
            size: 30.0,
          ),
          SizedBox(height:10.0),
          SpinKitFadingFour(
            color: Colors.blueAccent,
            size: 30.0,
          ),
          SizedBox(height:10.0),
          SpinKitPulse(
            color: Colors.blueAccent,
            size: 30.0,
          ),
          SizedBox(height:10.0),
          SpinKitChasingDots(
            color: Colors.blueAccent,
            size: 30.0,
          ),
          SizedBox(height:10.0),
          SpinKitHourGlass(
            color: Colors.blueAccent,
            size: 30.0,
          ),
          SizedBox(height:10.0),
          SpinKitSpinningCircle(
            color: Colors.blueAccent,
            size: 30.0,
          ),
        ],
      ),
    );
  }
}
