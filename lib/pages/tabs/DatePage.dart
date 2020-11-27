import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';
import 'package:flutter_cupertino_date_picker/flutter_cupertino_date_picker.dart';

class DatePage extends StatefulWidget {
  @override
  _DatePageState createState() => _DatePageState();
}

class _DatePageState extends State<DatePage> {
  var now = DateTime.now();

  // 方法1：自定义方法1 来获取 用户选择的日期
  // _showDatePicker()  {
  //   showDatePicker(
  //           context: context,
  //           // 初始化日期
  //           initialDate: now,
  //           firstDate: DateTime(1980),
  //           lastDate: DateTime(2100))
  //       .then((result) {
  //         // then 方法来获取用户选择的日期
  //         print(result);

  //       });
  // }

  // 方法2： 使用 async 来实现异步方法。
  _showDatePicker() async {
    var result = await showDatePicker(
      context: context,
      // 初始化日期
      initialDate: now,
      firstDate: DateTime(1980),
      lastDate: DateTime(2100),

      // // 如果当前的操作系统不是中文，而又需要显示中文，则在这里配置 国际化组件
      // locale: Locale('zh'),
    );

    print(result);

    setState(() {
      this.now = result;
    });
  }

  var _nowTime = TimeOfDay(hour: 12, minute: 30);
  _showTimePicker() async {
    var result = await showTimePicker(
        context: context, initialTime: TimeOfDay(hour: 12, minute: 30));

    // 设置这个值
    setState(() {
      this._nowTime = result;
    });
  }

  // 第三方组件的方法：
  // 参考网址：https://github.com/dylanwuzh/flutter-cupertino-date-picker/blob/master/example/lib/date_picker_bottom_sheet.dart
  // const String MIN_DATETIME = '2020-06-17';
  // const String MAX_DATETIME = '2021-11-25';
  // const String INIT_DATETIME = '2019-05-17';

  String MIN_DATETIME = '2010-06-17';
  String MAX_DATETIME = '2021-11-25';
  String INIT_DATETIME = '2020-06-17';

  DateTime _dateTime = DateTime.now();
  String _format = 'yyyy-MMMM-dd';
  bool _showTitle = true;
  // 英文
  // DateTimePickerLocale _locale = DateTimePickerLocale.en_us;
  // 中文
  DateTimePickerLocale _locale = DateTimePickerLocale.zh_cn;

  // 案例1：
  _showDatePickerPub() {
    DatePicker.showDatePicker(
      context,
      onMonthChangeStartWithFirstDate: true,
      pickerTheme: DateTimePickerTheme(
        showTitle: _showTitle,
        // 确定
        confirm: Text('Done', style: TextStyle(color: Colors.red)),
        // 取消
        cancel: Text('cancel', style: TextStyle(color: Colors.red)),
      ),
      // minDateTime: DateTime.parse(MIN_DATETIME),
      // maxDateTime: DateTime.parse(MAX_DATETIME),

      minDateTime: DateTime.parse(MIN_DATETIME),
      maxDateTime: DateTime.parse(MAX_DATETIME),
      initialDateTime: _dateTime,
      dateFormat: _format,
      locale: _locale,
      onClose: () => print("----- onClose -----"),
      onCancel: () => print('onCancel'),
      onChange: (dateTime, List<int> index) {
        setState(() {
          _dateTime = dateTime;
        });
      },

      // 设置这个值
      onConfirm: (dateTime, List<int> index) {
        setState(() {
          // print('AAA:'+dateTime.toString());
          _dateTime = dateTime;
        });
      },
    );
  }

  // 案例2：
  String _format1 = 'yyyy年M月d日 EEE,H时:m分';

  void _showDateTimePickerPub() {
    DatePicker.showDatePicker(
      context,
      minDateTime: DateTime.parse(MIN_DATETIME),
      maxDateTime: DateTime.parse(MAX_DATETIME),
      // initialDateTime: DateTime.parse(INIT_DATETIME),
      // 初始化日期，设置成上一次选中的日期
      initialDateTime: _dateTime,
      dateFormat: _format1,
      locale: _locale,
      pickerTheme: DateTimePickerTheme(
        showTitle: _showTitle,
      ),

      pickerMode: DateTimePickerMode.datetime, // show TimePicker
      onCancel: () {
        debugPrint('取消');
      },
      onChange: (dateTime, List<int> index) {
        setState(() {
          _dateTime = dateTime;

          print(_dateTime);
        });
      },
      onConfirm: (dateTime, List<int> index) {
        setState(() {
          _dateTime = dateTime;

          print(_dateTime);
        });
      },
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print(now);

    // 转换成时间戳; 输出：1592295967622
    print(now.millisecondsSinceEpoch);

    // 转换成当前日期  2020-06-16 16:26:07.622
    print(DateTime.fromMillisecondsSinceEpoch(1592295967622));

    // 转换成年月日的格式： 使用第三方组件

    print(formatDate(DateTime.now(), [yyyy, '-', mm, '-', dd]));
    print(formatDate(DateTime.now(), [yyyy, '年', mm, '月', dd, '日']));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('日期组件')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Column(
            children: <Widget>[
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    // Row 无事件，所以使用 InkWell 包裹起来，这样就有事件了
                    InkWell(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          // Text('2020-06-16'),
                          Text("${formatDate(this.now, [
                            yyyy,
                            '年',
                            mm,
                            '月',
                            dd,
                            '日'
                          ])}"),
                          Icon(Icons.arrow_drop_down),
                        ],
                      ),

                      // 监听 onTap 事件
                      // onTap: () {
                      //   print('打开日期组件');
                      // },
                      onTap: _showDatePicker,
                    ),

                    InkWell(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("${_nowTime.format(context)}"),
                          Icon(Icons.arrow_drop_down),
                        ],
                      ),
                      onTap: _showTimePicker,
                    ),
                  ]),

              // 第三方日期组件
              SizedBox(height: 40.0),
              Text('第三方日期组件演示'),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  // example:1
                  InkWell(
                    child: Row(children: <Widget>[
                      Text("${formatDate(this._dateTime, [
                        yyyy,
                        '年',
                        mm,
                        '月',
                        dd,
                        '日'
                      ])}"),
                      Icon(Icons.arrow_drop_down),
                    ]),

                    // onTap: (){

                    // },

                    // 2020/6/17 11:12 执行的是第三方的日期插件
                    onTap: _showDatePickerPub,
                  ),
                ],
              ),

              // example:2
              InkWell(
                child: Row(children: <Widget>[
                  Text(
                      // '${_dateTime.year}-${_dateTime.month.toString().padLeft(2, '0')}-${_dateTime.day.toString().padLeft(2, '0')}'),
                      "${formatDate(_dateTime,[ yyyy,'年',mm,'月',dd,'日','--',HH,'时',nn,'分'])}"
                  ),
                  Icon(Icons.arrow_drop_down),
                ]),

                // onTap: (){

                // },

                // 2020/6/17 11:12 执行的是第三方的日期插件
                onTap: _showDateTimePickerPub,
              )
            ],
          )
        ],
      ),
    );
  }
}
