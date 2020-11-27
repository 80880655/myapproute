import 'package:flutter/material.dart';
import 'package:myapproute/pages/class/IDataProvider.dart';
import 'package:myapproute/pages/class/IGenericDataProvider.dart';
import 'package:myapproute/pages/class/TransferDataEntity.dart';
import 'package:myapproute/pages/tabs/IDataWidget.dart';
import 'package:myapproute/pages/tabs/IGenericDataWidget.dart';

class SearchPage extends StatelessWidget {
  // const SearchPage({Key key}) : super(key: key);

  final arguments;
  SearchPage({this.arguments});

  final data = TransferDataEntity(id: "001", name: "张三丰", age: 18);

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   appBar: AppBar(
    //     title: Text('搜索页面'),
    //   ),
    //   body: Text('搜索页面，SearchPage${arguments != null ? arguments['id'] : '0'}'),
    // );

    // return DefaultTabController(
    //   length: 2,
    //   child: Scaffold(
    //       appBar: AppBar(
    //         title: Text('SearchPage'),

    //         //标题居中显示
    //         centerTitle: true,

    //         bottom: TabBar(
    //           tabs: <Widget>[
    //             Tab(text:"游戏"),
    //             Tab(text:"科技"),

    //           ],
    //         ),
    //       ),

    //       // 时间：2020/6/9 23:24 需要和上面的 TabBar 的数量对应起来
    //       body: TabBarView(
    //         children: <Widget>[
    //           ListView(
    //             children:<Widget>[
    //               ListTile(
    //                 title:Text('第一个Tab,游戏')
    //               ),
    //               ListTile(
    //                 title:Text('第一个Tab,游戏')
    //               ),
    //               ListTile(
    //                 title:Text('第一个Tab,游戏')
    //               ),
    //             ]
    //           ),

    //           // 第二个Tab,热门
    //           ListView(
    //             children:<Widget>[
    //               ListTile(
    //                 title:Text('第二个Tab,科技')
    //               ),
    //               ListTile(
    //                 title:Text('第二个Tab,科技')
    //               ),
    //               ListTile(
    //                 title:Text('第二个Tab,科技')
    //               ),
    //             ]
    //           ),
    //         ]),
    //     )

    // );

    return DefaultTabController(
        // Tab 的数量，这里一定要填写，和下面的 都要对应起来； 主要有3个地方。
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            // title: Text('SearchPage'),

            // 时间：2020/6/9 23:44分
            // 可以将下面的 bottom 放置在 AppBar里面的 title 里面。
            title: Row(children: <Widget>[
              Expanded(
                child: TabBar(
                  // 是否可以水平移动
                  isScrollable: true,
                  tabs: <Widget>[
                    Tab(text: "组件演示Demo"),
                    Tab(text: "MVVM架构示例"),
                    Tab(text: "科技"),
                    Tab(text: "Demo 演示"),
                  ],
                ),
              )
            ]),

            //标题居中显示
            centerTitle: true,

            // bottom: TabBar(
            //   tabs: <Widget>[
            //     Tab(text: "游戏"),
            //     Tab(text: "科技"),
            //   ],
            // ),
          ),

          // 时间：2020/6/9 23:24 需要和上面的 TabBar 的数量对应起来
          body: TabBarView(children: <Widget>[
            ListView(children: <Widget>[
              Wrap(
                children: <Widget>[
                  RaisedButton(
                    child: Text('左边滑动删除 示例'),
                    onPressed: () {
                      Navigator.pushNamed(context, "/movementPage");
                    },
                  ),
                  RaisedButton(
                    child: Text('仿微信左边滑动删除 示例'),
                    onPressed: () {
                      Navigator.pushNamed(context, "/slideMenu01");
                    },
                  ),
                  RaisedButton(
                    child: Text('第三方仿微信左边滑动删除 示例'),
                    onPressed: () {
                      Navigator.pushNamed(context, "/slideMenu02");
                    },
                  ),
                  RaisedButton(
                    child: Text('【监听和自定义事件】'),
                    color: Theme.of(context).accentColor,
                    onPressed: () {
                      Navigator.pushNamed(context, "/focusEvenet");
                    },
                  ),
                  RaisedButton(
                    child: Text('get&post方法/等待动画看演示'),
                    onPressed: () {
                      Navigator.pushNamed(context, "/getPostDemoPage");
                    },
                  ),
                  RaisedButton(
                    textColor: Colors.white,
                    color: Theme.of(context).accentColor,
                    child: Text('Dio请求网络数据'),
                    onPressed: () {
                      Navigator.pushNamed(context, "/dioDemoPage");
                    },
                  ),
                ],
              )
            ]),

            ListView(children: <Widget>[
              RaisedButton(
                textColor: Colors.white,
                color: Theme.of(context).accentColor,
                child: Text('MVP模式传值Demo1'),
                onPressed: () {
                  Navigator.pushNamed(context, "/dataTransferByConstructorPage",
                      arguments: this.data);
                },
              ),

              //时间：2020/7/1 12:07 InheritedWidget传值Demo2
              RaisedButton(
                textColor: Colors.white,
                color: Theme.of(context).accentColor,
                child: Text('InheritedWidget传值Demo2'),
                onPressed: () {
                  // Navigator.pushNamed(context, "/iDataWidget", arguments: this.data);

                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => IDataProvider(
                                child: IDataWidget(),
                                data: data,
                              )));
                },
              ),

              RaisedButton(
                textColor: Colors.white,
                color: Theme.of(context).accentColor,
                child: Text('InheritedWidget泛型传值Demo3'),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              IGenericDataProvider<TransferDataEntity>(
                                // child: IDataWidget(),
                                child: IGenericDataWidget(),
                                data: data,
                              )));
                },
              ),

              RaisedButton(
                textColor: Colors.white,
                color: Theme.of(context).accentColor,
                child: Text('MVVM模式 Demo'),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              IGenericDataProvider<TransferDataEntity>(
                                // child: IDataWidget(),
                                child: IGenericDataWidget(),
                                data: data,
                              )));
                },
              ),

              // ListTile(title: Text('第一个Tab,游戏')),
              // ListTile(title: Text('第一个Tab,游戏')),
              // ListTile(title: Text('第一个Tab,游戏')),
            ]),

            // 第二个Tab,热门
            ListView(children: <Widget>[
              ListTile(title: Text('第二个Tab,科技')),
              ListTile(title: Text('第二个Tab,科技')),
              ListTile(title: Text('第二个Tab,科技')),
            ]),

            // 2020/11/11 17:07分 增加的“ 仿网易标签选择器显示 Demo 演示”
            ListView(children: <Widget>[
              RaisedButton(
                    child: Text('仿网易标签选择器显示 Demo'),
                    onPressed: () {
                      Navigator.pushNamed(context, "/WangYiTitelChooseDemo");
                    },
                  ),


              RaisedButton(
                child: Text('仿网易标签选择器显示22'),
                onPressed: () {
                  Navigator.pushNamed(context, "/HistorySearchTitlePage");
                },
              ),


              RaisedButton(
                child: Text('使用阿里第三方的ICON Test'),
                onPressed: () {
                  Navigator.pushNamed(context, "/IconTestPage");
                },
              ),



            ]),




          ]),
        ));
  }
}
