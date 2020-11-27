
import 'package:myapproute/res/listData.dart';


// import 'dart:mirrors';

import 'dart:core';

// getTypeName(Dynamic obj){

//   return reflec
// }
void main() {
  
  // 时间：2020/5/21 14:46分 
  // 1、使用 map 方法来实现循环遍历

  // var tempList=listData.toList();

  // print(tempList);

  //2、下面就可以将 listData循环出来，但是需要注意后面的 toList() 方法。 
  var tempList=listData.map(

    (value){
      // 'value的类型是：'+ 
      print((value is String));   // 返回 false

      // 获取数据类型 
      // print(getTypeName(value));

      print(value['title']);
    }

  ).toList();




}







