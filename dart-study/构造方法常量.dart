main(List<String> args) {
  //const Person("Wiser", 20);中const可省略
  const person = const Person("Wiser", 20);
  person.info();
  // person = Person("Wiser",30);//报错 重新复制提示常量不能被赋值
}

//变量必须final 构造需要用const关键字
class Person{
  final String name;
  final int age;

  const Person(this.name,this.age);

  info() => print("name = $name , age = $age");
}