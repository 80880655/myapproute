// 时间：2020/5/18 Async 和 Await 方法

void main() async {
  var result = await testAsync();

  print(result);
}


// 异步方法
testAsync() async {
  return 'Hello async';
}




