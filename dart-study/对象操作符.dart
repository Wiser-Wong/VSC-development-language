main(List<String> args) {
    //条件成员访问?.
    // as,is,is!,..级联
    Person person;
    person?.info();//person 是空的 ?.判断是空的时候不执行，不是空的时候执行方法

    var person1;
    person1 = "Dart";
    person1 = Person();
    //此时不知道person1是字符串类型还是Person类对象所以无法调用Person类中的变量及方法 通过as来判断
    (person1 as Person).info();
    

    var person2;
    person2 = "Dart";
    //此时做as判断会报错
    // (person2 as Person).info();
    //如何修改呢这时候需要用到is或is!
    if(person2 is Person) person2.info();
    if(person2 is! Person) print("不是Person类对象");

    //..级联操作符
    var person3 = Person();
    person3..name = "Wiser"..age = 20..info();

}

class Person{
  String name;
  int age;

  info(){
    print("name = $name ,age = $age");
  }
}