main(List<String> args) {
  var woman = Woman.withN("Wiser","女");

}

class Woman extends Person{

  final String gender;

  String? name;

  //无参的子类的构造写法 final写法
  Woman(this.gender) : super(''){
    
  }

  //如果父类有有参的构造方法 需要子类这么写 Woman的名字可以随意起
  // Woman.withN(String name,this.gender) : super.withName(name);或者
  Woman.withN(String name,String g) : gender = g ,super.withName(name);//gender = g不能放到super之后
}

class Person{
  String? name;
  int? age;

  // //无参构造函数 优先执行
  // Person(){
  //   print("Person...");
  // }

  //有参的构造方法
  Person(this.name);
  Person.withName(this.name){
      print(name);
  }
}