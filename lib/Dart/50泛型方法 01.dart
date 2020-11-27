/*
  通俗理解： 泛型就是解决 类、接口、方法的复用性、 以及对不特定数据类型的支持（类型校验）。

*/

// 只能返回string 类型的数据
String getData1(String value) {
  return value;
}

// 只能返回 int 类型的数据
String getData2(String value) {
  return value;
}

// 1、上面就会导致代码 冗余、重复

// 2、使用泛型来解决返回 “不确定类型” 的方法。

// 3、泛型方法，在方法名称前面 写字母 “T”， 来代替任意类型的参数。  泛型方法或类 是
// 没有对 参数或类型 进行校验的。

// 对“传入的参数进行校验，对返回的也进行校验”
T getData<T>(T value) {
  return value;
}

void main() {
  // 4、 不带类型校验的 方法
  print(getData('XXXXX')); //  返回： String 类型的 XXXXX

  print(getData(123)); //  返回： int 类型的 123

  // 5、 带类型校验的 方法;  
  print(getData<String>('带有校验的泛型方法！'));

  print(getData<int>(123455));  




}
