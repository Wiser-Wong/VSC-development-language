main(List<String> args) {
  var man = Man();
  //调用自己的
  man.hobby = "玩游戏";
  man.manInfo();

  //调用父类的
  man.age = 20;
  man.name = "Wiser";
  man.info();

  man.manInfo();

  Person person = new Man();//多态
  person.name = "Wiser";
  person.age = 23;
  if(person is Man) person.manInfo();

  print(person);
}

//子类
class Man extends Person{
    String? hobby;

    @override
    bool get isAdult => (age ?? 0) > 17;

    @override
    info(){
      super.info();
    }

    manInfo(){
      print("name = $name, age = $age, hobby = $hobby");
    }
}

//父类
class Person{
  String? name;
  int? age;

  bool get isAdult => (age ?? 0) > 18;

  info(){
    print("Person 方法");
  }

  @override
  String toString() {
    return "name = $name, age = $age";
  }
}