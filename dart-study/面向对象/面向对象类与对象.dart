import 'person.dart';//需要导入person文件

main(List<String> args) {
  var person = new Person();
  var person1 = Person();//new 可省略

  // var person2 = _Person();//是不可创建的 因为下划线命名是私有的

  person.name = "Wiser";
  person.age = 19;
  // person.gender = "女";//报错 不能被修改

  person.info();
}

// //属性默认生成getter和setter方法
// //使用final声名属性只有getter方法
// //属性和方法通过.访问
// //方法不能被重载
// class Person{
//     String name;
//     int age;
//     final String gender = "男";

//     void info(){
//       print("name = $name , age = $age");
//     }

//     //报错 不能被重载
//     // void info(String name){}
// }