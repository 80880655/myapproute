void main() {
  // 时间：2020/5/13 10:36分  forEach

  Map person = {'name': '张三', 'age': 20};

  // forEach 循环
  // person.forEach((key, value) {

  // });

  // 1、 forEach 循环
  // person.forEach((key, value) {
  //   print("$key");
  //   print("$value");

  //   print("$key"+"-------"+"$value");

  // });

  // 2、for 循环
  // List myList=[1,2,3,4,5,];

  // List newList=new List();

  // for (var i = 0; i < myList.length; i++) {

  //   newList.add(myList[i]*2);

  // }

  // print(newList);  // 输出： [2, 4, 6, 8, 10]

  // 3、上述第2项中的另外一种写法
  // List myList = [
  //   1,
  //   2,
  //   3,
  //   4,
  //   5,
  // ];

  // var newList = myList.map((value) {
  //   return value * 3;
  // });

  // newList = myList.map((key) {
  //   return key * 2;
  // });

  // print(newList);
  // print(newList is Map);   // 返回false
  // print(newList is List);  // 返回false
  // print(newList.toList()[1]);  // 返回4， key值乘以数值之后，无法改变 序号

  // print(newList2 is List);
  // print(newList2 is Map);



  //4、where 的使用
  List myList = [1, 2, 3, 4, 5, 6, 7, 8, 9];

  var newList = myList.where((value) {
    return value > 5;
  });
  print(newList);   // 返回：(6, 7, 8, 9)










}
