void main() {
  // 时间：2020/5/13 16:14分 方法的递归

  var sum=0;
  fn(n){
    sum+=n;
    if (n==0) {
      return;
    }

    // print(sum);
    fn(n-1);
  }


  fn(100);

  print(sum);
  
}


