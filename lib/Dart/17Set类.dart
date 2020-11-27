void main() {

  // 时间：2020/5/13 9:48分  主要使用Set 的功能是去除数组重复内容
  // Set 是没有顺序且不能重复的集合，所以不能通过索引值去获取值

  // var s=new Set();

  // s.add('香蕉');

  // s.add('苹果');
  // s.add('苹果');

  // print(s);

  // print(s is List);

  // // 转换成 List 类型
  // var s2=s.toList();

  // print(s2);
  // print(s2 is List);


  // addAll
  List myList=['香蕉','苹果','西瓜','香蕉','xx','rrr'];

  var s=new Set();

  s.addAll(myList);

  print(s);

  print(s is List);

}
