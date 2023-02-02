main(List args) {
  var dog = Dog();
  // print(dog.name);// 直接使用代码崩溃
  dog.name = "小花"; // 需要先赋值在使用
  print(dog.name);
}

class Dog {
  // 懒加载 延迟初始化 可能不被使用，一但被使用时，必须赋值，否则崩溃
  late String name;
  late int age;
}