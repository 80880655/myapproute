void main() {
  // 时间：2020/5/13 9:48分  Map类型

  // Map person={
  //   'name':'张三',
  //   'age':20
  // };

  // var m=new Map();
  // m['name']='李四';

  // print(person);

  // print(m);

  // 1、常用属性
  // Map person={
  //   'name':'张三',
  //   'age':20
  // };

  // print(person.keys);

  // // 获取键值
  // print(person.keys.toList());

  // // 获取值
  // print(person.values);
  // print(person.values.toList());

  // 2、常用方法
  Map person = {'name': '张三', 'age': 20};

  person.addAll({
    'work': ['敲代码', '送外卖'],
    'height': 160
  });

  // print(person);

  // 3、查看映射的值方法： containsKey ，返回 true / false
  // var result=person.containsValue('送外卖');

  var result=person.containsKey('work');    // 返回 true

  var result2=person.containsValue(160);   // 返回 true

  var result3=person.containsValue('[敲代码, 送外卖]');   // 返回 false

  var result4=person.containsValue(['敲代码', '送外卖']);   // 返回 false

  var result5=person.containsValue(['敲代码']);   // 返回 false

  print(result);
  print(result2);
  print(result3);
  print(result4);
  
  print(result5);

}
