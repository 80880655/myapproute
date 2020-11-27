
void main() {
  
  // 1、JSON 格式相关联

  // var person={
  //   "name":"张三",
  //   "age":20,
  //   'sex':'男',
  //   "work":["程序员","送外卖"]
  // };

  // print(person);

  // // 这里和JavaScript 的语法有点不一样，注意一下。
  // print(person['name']);

  // print(person[1]); // 返回为null，不能这样使用
  
  // print(person['work']);



  // 2、Map 类型
  var p=new Map();

  p["name"]="李四";
  p["age"]=22;
  p["work"]=["程序员","送外卖"];

  print(p);
  print(p["name"]);


}
