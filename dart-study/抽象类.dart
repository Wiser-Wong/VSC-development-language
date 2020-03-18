main(List<String> args) {
  //抽象类不能被实例化
  // var person = Person();//报错不能被实例化
}

abstract class Person{
    void info();
}

class Man extends Person{

  @override
  void info() {
    print("Man expand abstract Person");
  }

}