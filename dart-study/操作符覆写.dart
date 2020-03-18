main(List<String> args) {
  var person1 = Person(11);
  var person2 = Person(20);

  //如何实现person1 > person2操作呢，本身对象没有>操作符
  print(person1 > person2);
  print(person1 < person2);
  print(person1["age"]);
}

class Person {
  int age;

  Person(this.age);

  //使对象可以比较 自定义>操作符
  bool operator <(Person person) {
    return this.age < person.age;
  }

  //使对象可以比较 自定义<操作符
  bool operator >(Person person) {
    return this.age > person.age;
  }

  //使对象可以使用[] 自定义[]操作符
  int operator [](String str) {
    if ("age" == str) return this.age;
    return 0;
  }
}
