main(List<String> args) {
  var map = new Map();
  map["name"] = "Wiser";
  map["age"] = 23;
  map["gender"] = "女";
  var person = Person.withMap(map);
}

class Person{
  String? name;
  int age;
  final String gender;

  //初始化数据 是执行在方法体之前的
  Person.withMap(Map map):this.age = map["age"],this.gender = map["gender"]{
      this.name = map["name"];
      print("name = $name ,age = $age ,gender = $gender");
  }
}