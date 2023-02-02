import 'dart:math';

main(List<String> args) {
  // 可变集合
  var list1 = [1, 2, "hello", "dart", true];
  var list2 = const {1, 2, 3}; //不可变的list
  // 空集合，可变集合
  var list3 = [];
  // 不可增加、删除、清空
  List<bool> list4 = List.filled(10, true);
  // 可变集合
  List list5 = List.from(["test"]);
  // 可变集合
  List<int> list6 = List.generate(10, (index) => index);

  list6.add(list6.length);
  print(list6);

  list5.addAll([1, "二", 3, 4]);
  list5.add(false);
  print(list5);

  for (var l in list1) {
    print("list1原始数据:==>$l");
  }

  list1[0] = 11;
  print("list1修改第0个位置：==>$list1");

  // 添加
  list1.add("value");
  print("list1添加一个元素：==>$list1");
  // 添加所有
  list1.addAll(list2);
  print("list1添加一个集合：==>$list1");

  // 插入单个元素
  list1.insert(2, "flutter");
  // 插入一个集合 [11, 2, 111, 333, flutter, hello, dart, true, value, 1, 2, 3]
  list1.insertAll(2, [111, 333]);
  print("list1插入一个元素：==>$list1");

  // 替换 修改 下面将坐标2位置的元素替换成一个集合  [11, 2, false, true, flutter, hello, dart, true, value, 1, 2, 3]
  list1.setAll(2, [false, true]);
  print("list1替换修改一个元素：==>$list1");
  // 替换坐标范围元素成一个新的元素
  list1.replaceRange(1, 3, ["Android"]);
  print("list1替换范围元素修改为一个元素：==>$list1");
  // 从原数组 start 处开始到 end 结束替换一个 iterable，可选参数 skipCount 表示从 iterable 第 skipCount 处开始复制
  list1.setRange(1, 3, list6, 2);
  print("list1替换范围元素为一个集合第n个位置开始复制：==>${list1.join(",")}");

  // 移除具体位置
  list1.removeAt(2);
  // 移除具体数据 删除第一个匹配到的 value
  list1.remove("dart");
  // 移除最后一个元素
  list1.removeLast();
  // 移除范围元素
  list1.removeRange(1, 3);
  // 移除列表符合删除条件元素
  list1.removeWhere((element) => element == "hello");
  // 删除不满足条件的元素
  list1.retainWhere((element) => element != "Android");
  print("list1移除元素：==>$list1");

  // 裁剪后的list
  print("裁剪List：==>${list1.sublist(0, 2)}");

  // 转map 不可修改的 Map,keys 为 List 顺序index ：{0: 11, 1: 2, 2: hello, 3: true, 4: value, 5: 1, 6: 2, 7: 3}
  print("转map：==>${list1.asMap()}");

  // 增强for循环
  // list1.forEach(print);
  list1.forEach((element) {
    print(element);
  });

  // 翻转list
  list1.reversed.forEach(print);

  // 随机排列列表数据
  list1.shuffle(Random());
  print("随机排列列表：==>$list1");

  // 列表第一个元素值
  var first = list6.first;
  print("first:==>$first");
  // 列表最后一个元素值
  var last = list6.last;
  print("last:==>$last");

  // 在选择的范围插入一个新的元素 整体替换选择的范围的元素
  list5.fillRange(2, 4, 100);
  print("选取范围插入新元素：==>$list5");

  // 获取list中间截取的数据
  var newList = list5.getRange(1, 3);
  print("获取列表范围元素：==>${newList.toList()}");

  // 迭代从前往后下标
  print("下标indexOf:==>${list1.indexOf("dart")}");
  // 迭代从后往前下标
  print("下标lastIndexOf:==>${list1.lastIndexOf("hello")}");

  // 返回第一个满足条件的下标 element == "test" 返回bool判断条件
  int index = list5.indexWhere((element) => element == "test");
  print("下标indexWhere：==>$index");

  // 返回最后满足条件的下标
  int index1 = list5.lastIndexWhere((element) => element == 100);
  print("下标lastIndexWhere：==>$index1");

  // 数组中是否包含元素
  print("list1中是否包含元素Android：==>>${list1.contains("Android")}");
  print("list5中是否包含元素test：==>>${list5.contains("test")}");

  // 返回index处的数据
  print("list1返回index处的数据：==>${list5.elementAt(2)}");

  // 集合下的元素筛选满足条件的元素集合
  print("list1集合下的元素筛选满足条件的元素集合：==>${list6.where((element) => element % 2 == 0).toList()}");

  // 展开list
  var pairs = [[1,2],[3,4]];
  var flattened = pairs.expand((element) => element).toList();
  print("展开二维数组List：==>${flattened}");
  var a = [1,2,3];
  var b = a.expand((element) => [element, element]).toList();
  print("展开一维数组List：==>${b}");

  var a1 = [1,2,3,4,5,"Android"];
  // 迭代元素返回第一个满足的元素，如果没有，执行exception异常
  var res = a1.firstWhere((element) => element == "Android");
  // 反向迭代元素返回第一个满足的元素，如果没有，执行exception异常
  var res1 = a1.lastWhere((element) => element == 5);
  print("迭代元素返回第一个满足的元素，如果没有，执行exception异常：==>$res");
  print("反向迭代元素返回第一个满足的元素，如果没有，执行exception异常：==>$res1");

  //将 other 数据添加到原数组，返回 Iterable 类型
  List a2 = new List.from([1, 2, 3, 4]);
  Iterable b2 = a2.followedBy([1, 2, 3]);
  print("将新数组添加到已有数组返回Iterable类型：==>$b2");//(1, 2, 3, 4, 1, 2, 3)

  // 把数组转成字符串中间用 自定义字符 隔开
  print("数组转成字符串中间用*隔开：==>${list1.join("*")}");

  // 迭代数组并返回一个新的数组，新数组长度跟原数组长度一样
  var newList1 = a2.map((e) => e).toList();
  print("迭代数组并返回一个新的数组，新数组长度跟原数组长度一样：==>$newList1");

  // 获取数组前n条数据组成新的Iterable
  print("获取数组前n条数据组成新的Iterable：==>${newList1.take(3)}");

  // 遍历迭代器，直到找到不满足条件返回为 false 的元素，停止遍历返回找到的 iterable
  print("找到不满足条件返回为false的元素：==>${a2.takeWhile((value) => value == 2)}"); // ()
  print("找到不满足条件返回为false的元素：==>${a2.takeWhile((value) => value == 1)}"); // (1)

  // 找到原 list 中带有 T 类型的元素
  print(a1.whereType<String>());

  // 如果 List 中所有类型满足 T,正常工作并返回 List，如果有一个不满足，将会抛出错误异常
  // print(list6.cast<bool>());

  // 清空列表
  list6.clear();
  print(list6);
}
