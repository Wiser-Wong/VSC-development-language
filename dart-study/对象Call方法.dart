main(List<String> args) {
  var person = Person();

  person("Wiser",20);//执行的是call方法
}

class Person{
  String name;
  int age;

  // info(){
  //   print("name = $name ,age = $age");
  // }

  //类实现了call方法 则类对象可以作为方法使用
  call(String name,int age){
     print("name = $name ,age = $age");
  }
}