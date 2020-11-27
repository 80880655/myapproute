void main() {
//  is 判断是否是某个类型，返回true或者false。
// 如果a 是b的实现类，那么a is b 就返回true。

// as 是类型转换，其相当于 ：先检测 其是不是，然后再调用的一种简写。
// 但是还不是完全一致，当不是的时候，as 会抛出exception

  String str = '123';

  var myNum = int.parse(str);

  print(myNum);

  print(myNum is int); // 输出 true

  // print(myNum as String);

  print('-----------------');

  String price = '12';

  var myNum2 = double.parse(price);

  print(myNum2 is double);

  // 使用 try...catch

  print('-----------------');
  String price2 = '';

  try {
    var myNum3 = double.parse(price2);

    print(myNum3 is double);
  } catch (e) {
    print(0);
  }
}
