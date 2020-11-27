



void main() {
  
  // 集的每个对象只能出现一次，不能重复
  // 时间：2020/5/21 15:59分 

  Set villains=new Set();

  villains.add('Joker');

  villains.addAll(['Lex Luther','Voldemeort']);

  print(villains);

  print(villains is List);  // 返回false

  print(villains.toList());

}

