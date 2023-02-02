main(List<String> args) {
  //直接使用类名作为接口的实现 最像接口的实现方式是使用抽象类方式
  var woman = Woman();
  woman.info();
}

class Person{
  String? name;
  int? age;

  void info(){
    print("Person父类");
  }
}

abstract class Person1{
  void info();
}

class Woman implements Person{

  @override
  int? age;

  @override
  String? name;

  @override
  void info() {

  }
  
}

class Woman1 implements Person1{
  @override
  void info() {
    print("我是接口的实现");
  }
  
}
