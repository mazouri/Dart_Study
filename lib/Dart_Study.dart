int calculate() {
  return 6 * 7;
}

void basicCode() {

}

void numberConvert() {
  // String -> int
  var one = int.parse('1');

  // String -> double
  var onePointOne = double.parse('1.1');

  // int -> String
  String one2String = 1.toString();

  // double -> String 注意括号中要有小数点位数，否则报错
  String pi2String = 3.14159.toStringAsFixed(2);

  print('$one, $onePointOne, $one2String, $pi2String');
}

void studyList() {
  // 使用List的构造函数
  var list = new List();
  // 也可以添加int参数，表示List固定长度
  var list2 = new List(3);

  list.add(1);
  list.add(2);
  list.add(3);
  // 删除指定元素,成功返回true，失败返回false
  list.remove(2);

  //对于设置了固定长度的List，不能进行添加 删除操作，否则会报错： Cannot add to a fixed-length list
//  list2.add(1);
//  list2.add(2);
//  list2.add(3);
//  list2.remove(2);

  // 或者简单的用List来赋值
  var fruits = ['apples', 'oranges'];

  // 添加元素
  fruits.add('kiwis');
  // 添加多个元素
  fruits.addAll(['grapes', 'bananas']);

  int fruits_length = fruits.length;

  // 获取第一个元素
  var first_fruit = fruits.first;
  var last_fruit = fruits.last;

  // 利用索引获取元素
  var fruit_at_index_of_zero = fruits[0];
  var index_of_apple = fruits.indexOf('apples');

  // 删除指定位置的元素，返回删除的元素
  fruits.removeAt(2);
  // 删除最后一个元素，返回删除的元素
  fruits.removeLast();

  // 删除指定范围元素，含头不含尾，成功返回null
  list.removeRange(0,fruits.length - 1);

  // 删除指定条件的元素，成功返回null
  list.addAll([6,1,5, 2,10, 3, 23, 4, 5, 10,6,7,8,9]);
  // 删除指定条件的元素，成功返回null
  list.removeWhere((item) => item > 6);
  // 删除所有的元素
  fruits.clear();

  // sort()对元素进行排序，传入一个函数作为参数，return <0表示由小到大， >0表示由大到小
  list.sort((a, b) => a.compareTo(b));

  print('$list, $list2, $fruits, $fruits_length, $first_fruit, $last_fruit'
      ', $fruit_at_index_of_zero, $index_of_apple');
}

void studyMap() {
  // Map的声明
  var map = {
    'oahu' : ['waikiki', 'kailua', 'waimanalo'],
    'big island' : ['wailea bay', 'pololu beach'],
    'kauai' : ['hanalei', 'poipu']
  };

  var newMap = new Map();

  // 指定键值对的参数类型
  var nobleGases = new Map<int, String>();
// Map的赋值，中括号中是Key，这里可不是数组
  nobleGases[54] = 'dart';
  var value1 = nobleGases[54];
  nobleGases[54] = 'xenon';
  var value2 = nobleGases[54];
  var contains54 = nobleGases.containsKey(54);
  var contains60 = nobleGases.containsKey(60);
  //删除某个键值对
  nobleGases.remove(54);
  var contains54AfterRemove = nobleGases.containsKey(54);

  print('$map, $newMap, $nobleGases, $value1, $value2, $contains54, $contains60, $contains54AfterRemove');
}

void studyRunes() {
  String dart = 'wangdongdong';
  int codeUnit = dart.codeUnitAt(0);
  List codeUnits = dart.codeUnits;

  print('$codeUnit, $codeUnits');
}

class A {
  A({this.name, this.age});
  final name;
  final age;
}

void studyOperator() {
  var o = new A(name: 'wdd', age: 22);;

  print(o?.name);
  o = null;
  print(o?.age);
}

class CustomException implements Exception {
  String msg;

  CustomException(this.msg);
}

void studyCustomException() {
  try {
    throwCustomException();
  } on CustomException {
    print('haha');
  }
}

void throwCustomException() {
  throw new CustomException('throw a custom exception.');
}

void studyException() {
  try {
    throw new Exception('sdas');
  } on Exception catch (e) {
    // Anything else that is an exception
    print(3);
  } catch (e) {
    // No specified type, handles all
    print(4);
  }
}

main() {
  studyCustomException();
}
