import 'package:flutter/material.dart';

class AppBarTabBarDemo extends StatefulWidget {
  @override
  _AppBarTabBarDemoState createState() => _AppBarTabBarDemoState();
}

class _AppBarTabBarDemoState extends State<AppBarTabBarDemo> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 10,
        child: Scaffold(
          appBar: AppBar(
            title: Text('AppBarDemoPage'),

            //标题居中显示
            centerTitle: true,

            // 在 AppBar 右边增加按钮图标
            actions: <Widget>[
              IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    print('search');
                  }),
              IconButton(
                  icon: Icon(Icons.settings),
                  onPressed: () {
                    print('settings');
                  })
            ],

            bottom: TabBar(
              
              // TabBar 是否可以滚动
              isScrollable: true,

              // TabBar 指示器的颜色
              indicatorColor:Colors.white,

              // TabBar 字体颜色
              labelColor: Colors.red,

              // TabBar 没有选中的字体颜色
              unselectedLabelColor: Colors.white,

              // 指示器的长度；  TabBarIndicatorSize.label 代表 和标题的宽度等宽。
              // indicatorSize: TabBarIndicatorSize.label,
              indicatorSize: TabBarIndicatorSize.tab,

              tabs: <Widget>[
                Tab(text:"关注"),
                Tab(text:"热门"),
                Tab(text:"推荐"),
                Tab(text:"财经"),   
                Tab(text:"热销"), 

                Tab(text:"关注"),
                Tab(text:"热门"),
                Tab(text:"推荐"),
                Tab(text:"财经"),   
                Tab(text:"热销"),        
              ],
            ),
          ),

          // 时间：2020/6/9 23:24 需要和上面的 TabBar 的数量对应起来
          body: TabBarView(
            children: <Widget>[
              ListView(
                children:<Widget>[
                  ListTile(
                    title:Text('第一个Tab,关注')
                  ),
                  ListTile(
                    title:Text('第一个Tab,关注')
                  ),
                  ListTile(
                    title:Text('第一个Tab,关注')
                  ),
                ]
              ),

              // 第二个Tab,热门
              ListView(
                children:<Widget>[
                  ListTile(
                    title:Text('第二个Tab,热门')
                  ),
                  ListTile(
                    title:Text('第二个Tab,热门')
                  ),
                  ListTile(
                    title:Text('第二个Tab,热门')
                  ),
                ]
              ),

              // 第三个Tab
              ListView(
                children:<Widget>[
                  ListTile(
                    title:Text('第三个Tab,推荐')
                  ),
                  ListTile(
                    title:Text('第三个Tab,推荐')
                  ),
                  ListTile(
                    title:Text('第三个Tab,推荐')
                  ),
                ]
              ),

              // 第四个Tab
              ListView(
                children:<Widget>[
                  ListTile(
                    title:Text('第四个Tab,财经')
                  ),
                  ListTile(
                    title:Text('第四个Tab,财经')
                  ),
                  ListTile(
                    title:Text('第四个Tab,财经')
                  ),
                ]
              ),

              // 第五个Tab
              ListView(
                children:<Widget>[
                  ListTile(
                    title:Text('第五个Tab,热销')
                  ),
                  ListTile(
                    title:Text('第五个Tab,热销')
                  ),
                  ListTile(
                    title:Text('第五个Tab,热销')
                  ),
                ]
              ),

              ListView(
                children:<Widget>[
                  ListTile(
                    title:Text('第一个Tab,关注')
                  ),
                  ListTile(
                    title:Text('第一个Tab,关注')
                  ),
                  ListTile(
                    title:Text('第一个Tab,关注')
                  ),
                ]
              ),

              // 第二个Tab,热门
              ListView(
                children:<Widget>[
                  ListTile(
                    title:Text('第二个Tab,热门')
                  ),
                  ListTile(
                    title:Text('第二个Tab,热门')
                  ),
                  ListTile(
                    title:Text('第二个Tab,热门')
                  ),
                ]
              ),

              // 第三个Tab
              ListView(
                children:<Widget>[
                  ListTile(
                    title:Text('第三个Tab,推荐')
                  ),
                  ListTile(
                    title:Text('第三个Tab,推荐')
                  ),
                  ListTile(
                    title:Text('第三个Tab,推荐')
                  ),
                ]
              ),

              // 第四个Tab
              ListView(
                children:<Widget>[
                  ListTile(
                    title:Text('第四个Tab,财经')
                  ),
                  ListTile(
                    title:Text('第四个Tab,财经')
                  ),
                  ListTile(
                    title:Text('第四个Tab,财经')
                  ),
                ]
              ),

              // 第五个Tab
              ListView(
                children:<Widget>[
                  ListTile(
                    title:Text('第五个Tab,热销')
                  ),
                  ListTile(
                    title:Text('第五个Tab,热销')
                  ),
                  ListTile(
                    title:Text('第五个Tab,热销')
                  ),
                ]
              )
            ]),
        ));
  }
}
