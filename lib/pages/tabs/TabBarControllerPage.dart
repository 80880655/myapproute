import 'package:flutter/material.dart';

class TabBarControllerPage extends StatefulWidget {
  @override
  _TabBarControllerPageState createState() => _TabBarControllerPageState();
}

class _TabBarControllerPageState extends State<TabBarControllerPage>
    with SingleTickerProviderStateMixin {
  /*
    时间：2020/6/10 11：28分
    1、
  */

  // 1、TabController 类
  TabController _tabController;

  // 生命周期函数
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();

    // 可以写，也可以不写，这里是将 变量 _tabController 销毁。
    _tabController.dispose();

    // print(_tabController);
  }

  //2、初始化;
  // 生命周期函数
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    //3、初始化 TabController类, 第一 length 是 个数，第二个 vsync 是固定写法。
    _tabController = new TabController(
      length: 2,
      vsync: this,
    );

    //6、可以使用 addListener 监听方法，来实现用户点击的是哪个 index。
    _tabController.addListener((){
      // 打印出 index.
      print(_tabController.index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TabBarControllerPage'),
        bottom: TabBar(

            //4、 使用上面的 _tabController 来实现， 通过 tabController 实现顶部的切换
            controller: this._tabController,
            tabs: <Widget>[
              Tab(text: '热销'),
              Tab(text: '推荐'),
            ]),
      ),
      body: TabBarView(
        
        // 5、 上面第4步实现了之后，在第5步里面也需要实现一下 tabController 类。
        controller: this._tabController,

        children: <Widget>[
        Center(child: Text('热销')),
        Center(child: Text('推荐')),
      ]),
    );
  }
}
