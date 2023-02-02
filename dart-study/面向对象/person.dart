//属性默认生成getter和setter方法
//使用final声名属性只有getter方法
//属性和方法通过.访问
//方法不能被重载

class Person{
    String? name;
    int? age;
    final String gender = "男";

    void info(){
      print("name = $name , age = $age");
    }

    //报错 不能被重载
    // void info(String name){}
}