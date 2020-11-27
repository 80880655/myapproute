/*
Dart 中的泛型接口：
  实现数据缓存的功能： 有文件缓存、和内存缓存。内存缓存和文件缓存按照接口约束实现。

  1、定义一个泛型接口 约束它实现它的子类必须有 getByKey(key) 和 setByKey(key,value);

  2、要求 setByKey 的时候 value 的类型和实例化子类的时候 指定的类型一致。

*/

// 1、 abstract 定义接口； 后面继承的接口必须按照 接口定义好的格式和规则来。
abstract class Cache<T> {
  getByKey(String key);
  void setByKey(String key, T value);
}

// 2、文件缓存的方法
class FlieCache<T> implements Cache<T> {
  @override
  getByKey(String key) {
    return null;
  }

  @override
  void setByKey(String key, T value) {
    print('文件缓存 把key=${key}  value=${value}的数据写入到文件缓存中！');
  }
}

// 3、内存缓存的方法
class MemoryCache<T> implements Cache<T> {
  @override
  getByKey(String key) {
    return null;
  }

  @override
  void setByKey(String key, T value) {
    print('内存缓存 把key=${key}  value=${value}的数据写入到内存中！');
  }
}

void main() {
  // 泛型接口的使用。
  // 1、测试
  MemoryCache m = new MemoryCache<String>();
  m.setByKey('index', '首页数据');

  // 2、Map 类型
  MemoryCache m2 = new MemoryCache<Map>();
  m2.setByKey('Map类型', {"name": "123", "sex": 20});




}
