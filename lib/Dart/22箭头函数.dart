void main() {
  // 时间：2020/5/13 14:51分

  // List list=['苹果','香蕉','西瓜'];

  // list.forEach((value) { 
  // //   print(value);
  // // });


  // // 1、更换成箭头函数;  注意后没有 “分号”， 如果只有一句话就可以使用  箭头函数。
  // list.forEach((value)=>print(value));

  //2、 箭头函数的练习
  List list=[1,2,3,4,5,65,67];
  var newList=list.map((value) =>value>2?value*2:value );

  print(newList);
  print(newList.toList());


}
