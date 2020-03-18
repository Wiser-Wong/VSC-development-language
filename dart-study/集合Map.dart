main(List<String> args) {
  var map = {"key1":"value","key2":1,"key3":true};
  print(map);
  print(map["key1"]);

  map["key1"] = "修改的value";
  print(map);

  var constMap = const {"key":1,"key1":2};//不可变的map
  var map1 = new Map();

  print(map.length);
  print(map.isNotEmpty);
  print(map.keys);
  print(map.values);
  print(map.containsKey("key1"));
  print(map.containsValue(1));

  map.remove("key1");
  print(map);

  var list = [1,2,3];
  print(list.asMap());

  // 两个参数函数 list是一个参数的函数
  map.forEach(f);
}

void f(key,value){
  print("key = ${key} value = ${value}");
}