
void main(List<String> args) {
  
  // 1、第一种定义list的方式
  // var l1=['aaa','bbb','ccc'];

  // print(l1);
  // print(l1.length);
  // print(l1[0]);


  // 2、第二种定义list的方式
  // var l2=new List();

  // l2.add('张三');
  // l2.add('李四');
  // l2.add('王五');


  // print(l2);
  // print(l2[2]);


  // 3、定义 list 的类型

  var l3=new List<String>();

  l3.add('张三');
  
  // l3.add(13); // 报错，需要指定类型

  print(l3);

}
