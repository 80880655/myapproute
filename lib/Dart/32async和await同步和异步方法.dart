void main() async {
  // 1、同步和异步方法， 使用关键字 async  await
  // 2、 await 必须用在 async 方法里面，所以这里需要将 main 方法更改成 async 方法。

  var result = testAsync();

  print(result);

  var result2 = await testAsync2();
  print(result2); // 返回：hellow async method!
}

testAsync() {
  return 'hellow';
}

testAsync2() async {
  return 'hellow async method!';
}
