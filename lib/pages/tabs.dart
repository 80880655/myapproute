import 'package:flutter/material.dart';
import 'package:myapproute/pages/tabs/HomePage.dart';
import 'package:myapproute/pages/tabs/SearchPage.dart';
import 'package:myapproute/pages/tabs/SettingsPage.dart';

/*
  时间：2020/6/1 17:22 StatefulWidget,  BottomNavigationBar组件
  目标：
    1、练习 BottomNavigationBar  组件，实现底部导航条的效果。
    2、实现 使用 StatefulWidget 动态组件实现.
    3、当底部显示4个的时候，底部不显示任何的内容。
      主要原因为：如果是显示3个则没有问题，如果是显示4个则有问题，所选项目的背景颜色，在这个假设每个项目都有不同的背景，颜色和背景颜色会与白色形成很好的对比。
    4、默认选中底部栏目 
    5、实现用户点击 某一个底部栏目之后，被选中的栏目就变亮。
*/

class Tabes extends StatefulWidget {
  Tabes({Key key}) : super(key: key);

  @override
  _TabesState createState() => _TabesState();
}

class _TabesState extends State<Tabes> {
  // 声明一个变量来继承被选中的index值
  int _currentIndex = 0;

  // 2020/6/1 18:08分
  // 声明一个list 数组类,将所有的页面存储在里面，然后下面的 body 进行调用和切换
  List _pageList = [
    HomePage(),
    SearchPage(),
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text('Text Test')),

      // 2020/6/18 10:03分 渐变色
      appBar: AppBar(
        title: Text('Text Test'),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Color(0xFF0018EB),
              Color(0xFFCFFFFF),
              Color(0xFFFFFFFF),
            ], begin: Alignment.bottomCenter, end: Alignment.topCenter),
          ),
        ),
      ),

      // 浮动按钮，修改大小
      // floatingActionButton: FloatingActionButton(
      //   child: Icon(
      //     Icons.add,
      //     color: Colors.black,
      //     size: 40.0,
      //   ),
      //   onPressed: () {
      //     print('floatingActionButton Tabs');
      //   },
      //   backgroundColor: Colors.yellow,
      // ),
      // // 默认显示在 右下角，下面这句让浮动按钮显示在底部中间
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      // 浮动按钮更改大小
      floatingActionButton: Container(
        height: 70.0,
        width: 70.0,
        padding: EdgeInsets.all(8),
        // padding: EdgeInsets.only(bottom:12),
        // color: Colors.red,
        // 将 Container 改成圆形

        // 摆位置
        margin: EdgeInsets.only(top: 4),

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          // color: Colors.black12,
          // color: Colors.white
        ),

        child: FloatingActionButton(
          child: Icon(
            Icons.add,
            color: Colors.black,
            size: 30.0,
          ),
          onPressed: () {
            // print('floatingActionButton Tabs');
            // 实现 点击浮动按钮 跳转到 查询 页面

            setState(() {
              this._currentIndex = 1;
            });
          },
          // backgroundColor: Colors.blueAccent,
          backgroundColor:
              this._currentIndex == 1 ? Colors.red : Colors.blueAccent,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      // 在这里实现页面的切换。
      // body: Text('body'),
      body: this._pageList[this._currentIndex],

      // 2020/6/10 14:15 抽屉组件 Drawer
      drawer: Drawer(
        // child: Text('左边侧边栏'),

        child: Column(children: <Widget>[
          // DrawerHeader  组件的使用
          // DrawerHeader(child: Text('你好flutter')),
          // Row(
          //   children: <Widget>[
          //     Expanded(
          //         child: DrawerHeader(
          //       child: Text('你好flutter',
          //       ),
          //       decoration: BoxDecoration(
          //         image: DecorationImage(
          //           image:NetworkImage('https://www.itying.com/images/flutter/5.png'),
          //           //平铺
          //           fit: BoxFit.cover,
          //         )
          //       ),
          //     ))
          //   ],
          // ),

          // UserAccountsDrawerHeader 组件
          Row(
            children: <Widget>[
              Expanded(
                child: UserAccountsDrawerHeader(
                  accountName: Text('用户名称'),
                  accountEmail: Text('asl.kiss@163.com'),
                  // 头像
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://www.itying.com/images/flutter/5.png'),
                  ),
                  //增加背景图片
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: NetworkImage(
                        'https://www.itying.com/images/flutter/2.png'),
                    fit: BoxFit.cover,
                  )),
                ),
              )
            ],
          ),

          ListTile(
            leading: CircleAvatar(child: Icon(Icons.home)),
            title: Text('我的空间'),
          ),

          // 下面增加一根线
          Divider(),

          ListTile(
            leading: CircleAvatar(child: Icon(Icons.people)),
            title: Text('用户中心'),
            onTap: () {
              // 用户点击返回之后，侧边栏还在，如果需要隐藏侧边栏，则需要执行下面代码。
              Navigator.of(context).pop();

              // 使用路由进行页面跳转。
              Navigator.pushNamed(context, '/user');
            },
          ),

          Divider(),

          ListTile(
            leading: CircleAvatar(child: Icon(Icons.settings)),
            title: Text('设置'),
          ),
          Divider(),
        ]),
      ),

      endDrawer: Drawer(
          child: Column(
        children: <Widget>[
          Text('右边侧边栏11'),

        ],
      )),

      bottomNavigationBar: BottomNavigationBar(
        // 默认选中
        currentIndex: this._currentIndex,

        // 需要使用 setState 方法来重新渲染UI组件页面。
        onTap: (int x) {
          setState(() {
            // print(x);
            this._currentIndex = x;
          });
        },

        items: [
          BottomNavigationBarItem(
              title: Text('主页'),
              icon: Icon(
                Icons.home,
              )),
          BottomNavigationBarItem(
              title: Text('Demo演示'),
              icon: Icon(
                Icons.search,
              )),
          BottomNavigationBarItem(
              title: Text('设置'),
              icon: Icon(
                Icons.settings,
              )),
        ],

        // icon的图标大小
        // iconSize: 40.0,

        //选中的颜色
        fixedColor: Colors.redAccent,

        // 配置底部有多个按钮 BottomNavigationBarType.fixed;
        // 如果添加的BottomNavigationBarItem超过3个，请写死type
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
