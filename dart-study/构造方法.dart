main(List<String> args) {
  var person1 = Person1("Wiser",10,"男");
  
  var person2 = Person.withName("Wiser");

  var person3 = Person.withAge(20);
}

//构造方法不能被重载 如何实现多个构造方法呢-->需要使用命名的构造方法（类.方法——>class.method）
class Person{
  String name;
  int _age;

  // 默认构造方法
  // Person(){

  // }

  //默认构造方法不能同时存在
  // Person(String name,int _age){
  //     this.name = name;
  //     this._age = _age;
  // }
  //=
  Person(this.name,this._age);//语法堂

  //命名构造方法实现多个构造方法
  Person.withName(this.name);

  Person.withAge(this._age);

  info(name,_age) => print("name = $name , _age = $_age");
}

class Person1{
  String name;
  int _age;
  final String gender;

  // Person1(String name,int _age,String gender){
  //     this.name = name;
  //     this._age;
  //     // this.gender = gender;//报错 是因为final被需改了
  // }

  Person1(this.name,this._age,this.gender);//可以用语法堂给final赋初始值

  info(name,_age) => print("name = $name , _age = $_age");
}