import 'package:flutter/material.dart';
import 'package:left_scroll_actions/left_scroll_actions.dart';
import 'package:myapproute/components/list.dart';
import 'package:myapproute/components/row.dart';

class SlideMenu02Page extends StatefulWidget {
  @override
  _SlideMenu02PageState createState() => _SlideMenu02PageState();
}

class _SlideMenu02PageState extends State<SlideMenu02Page> {
  FocusNode priceFocus = FocusNode();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();


    // modify:gaofeng 2020/6/18
    priceFocus.addListener(() {
      if (!priceFocus.hasFocus) {
        print('失去焦点');
        // Navigator.pop(context);
        Navigator.of(context).pop();
      } else {
        print('得到焦点');
      }
    });


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Left Scroll Actions'),
        ),
        backgroundColor: Color(0xFFf5f5f4),
        body: ListView(
          children: <Widget>[


            Container(
              padding: EdgeInsets.all(12),
              child: MaterialButton(
                color: Colors.blue,
                child: Text(
                  'ListView Usage Demo',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ListPage(),
                  ));
                },
              ),
            ),
            Container(height: 50),
            Container(
              padding: EdgeInsets.only(top: 12, left: 8, bottom: 8),
              child: Text('These widget can scroll to actions.'),
            ),
            LeftScroll(

              // 点击返回是否关闭，默认是 true，如果是 false 则点击返回的时候不会回退。
              closeOnPop:true,

              
              buttonWidth: 80,
              child: Container(
                height: 60,
                color: Colors.white,
                alignment: Alignment.center,
                child: Text('👈 Try Scroll Left'),
              ),
              buttons: <Widget>[
                LeftScrollItem(
                  text: '删除',
                  color: Colors.red,
                  onTap: () {
                    print('删除');
                  },
                ),
                LeftScrollItem(
                  text: '编辑',
                  color: Colors.orange,
                  onTap: () {
                    print('编辑');
                  },
                ),
              ],
              onTap: () {
                print('tap row');
              },
            ),
            LeftScroll(
              child: Container(
                height: 60,
                color: Colors.white.withOpacity(0.8),
                alignment: Alignment.center,
                child: Text('If opacity is not 1.0,may cause problem.'),
              ),
              buttons: <Widget>[
                LeftScrollItem(
                  text: 'delete',
                  color: Colors.red,
                ),
                LeftScrollItem(
                  text: 'Edit',
                  color: Colors.orange,
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.only(top: 12, left: 8, bottom: 8),
              child: Text('CupertinoLeftScrollRow'),
            ),
            InkWell(
              //modify：gaofeng 2020/6/18 17:38分 添加失去焦点事件，使用 InWell 组件的 焦点事件

              focusNode: priceFocus,

              child: CupertinoLeftScroll(

                

                // 控制弹性效果
                bounce: true,

                buttonWidth: 60,
                child: Container(
                  height: 60,
                  color: Colors.white,
                  alignment: Alignment.center,
                  child:
                      Text('👈 Try Scroll Left(添加失去焦点事件，使用 InWell 组件的 焦点事件)'),
                ),
                buttons: <Widget>[
                  LeftScrollItem(
                    text: 'Delete',
                    color: Colors.red,
                    onTap: () {
                      //modiy:gaofeng 2020/6/18 17:20  下面的 Navigator.of(context).pop(); 可以实现
                      // Navigator.of(context).pop();


                      // 2020/6/18 18:31 替换路由也不行，相当于加载了页面；
                      // 
                      Navigator.of(context).pushReplacementNamed('/slideMenu02');
                      
                      print('delete');
                    },
                  ),
                  LeftScrollItem(
                    text: 'Edit',
                    color: Colors.orange,
                    onTap: () {
                      print('edit');
                    },
                  ),
                ],
                onTap: () {
                  print('tap row');
                },
              ),
            ),
            CupertinoLeftScroll(
              // 控制弹性效果
              bounce: true,

              buttonWidth: 60,
              child: Container(
                height: 60,
                color: Colors.white,
                alignment: Alignment.center,
                child: Text('👈 Try Scroll Left(iOS style1111)'),
              ),
              buttons: <Widget>[
                LeftScrollItem(
                  text: 'Delete',
                  color: Colors.red,
                  onTap: () {
                    //modiy:gaofeng 2020/6/18 17:20

                    // Navigator.of(context).pop();
                    print('delete');
                  },
                ),
                LeftScrollItem(
                  text: 'Edit',
                  color: Colors.orange,
                  onTap: () {
                    print('edit');
                  },
                ),
              ],
              onTap: () {
                print('tap row');
              },
            ),
            CupertinoLeftScroll(
              buttonWidth: 60,
              bounce: true,
              child: Container(
                height: 60,
                color: Colors.white,
                alignment: Alignment.center,
                child: Text('👈 Try Scroll Left(iOS style with bounce)'),
              ),
              buttons: <Widget>[
                LeftScrollItem(
                  text: 'Delete',
                  color: Colors.red,
                  onTap: () {
                    print('delete');
                  },
                ),
                LeftScrollItem(
                  text: 'Edit',
                  color: Colors.orange,
                  onTap: () {
                    print('edit');
                  },
                ),
              ],
              onTap: () {
                print('tap row');
              },
            ),
            CupertinoLeftScroll(
              opacityChange: true,
              buttonWidth: 80,
              child: Container(
                height: 60,
                color: Colors.white,
                alignment: Alignment.center,
                child: Text('👈 Try iOS style with opa change'),
              ),
              buttons: <Widget>[
                LeftScrollItem(
                  text: 'delete',
                  textColor: Colors.red,
                  color: Colors.red.withOpacity(0),
                  onTap: () {
                    print('delete');
                  },
                ),
                LeftScrollItem(
                  text: 'Edit',
                  textColor: Colors.orange,
                  color: Colors.orange.withOpacity(0),
                  onTap: () {
                    print('edit');
                  },
                ),
              ],
              onTap: () {
                print('tap row');
              },
            ),
            Container(height: 50),
            Container(
              padding: EdgeInsets.only(top: 12, left: 8, bottom: 8),
              child:
                  Text('You can build widget like this if opacity is not 1.0.'),
            ),
            ExampleRow(
              onDelete: () {
                print('delete');
              },
              onTap: () {
                print('tap');
              },
              onEdit: () {
                print('edit');
              },
            ),
          ],
        ));
  }
}
