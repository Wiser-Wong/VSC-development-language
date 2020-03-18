main(List<String> args) {
    var person = Person("Wiser", 40);
}

//factory实现工厂构造方法 可在工厂构造方法返回对象
class Person{
    String name;
    int age;

    //工厂构造方法不可用语法堂（this.name,this.age）
    factory Person(String name,int age){
        return Person._with();//返回私有构造对象
    }

    //加下划线私有构造方法
    Person._with(){
        print("name = $name ,age = $age");
    }

}