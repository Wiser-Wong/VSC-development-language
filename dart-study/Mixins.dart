main(List<String> args) {
  //Mixins类似于多继承，是在多类继承中重用一个类代码的方式
  //作为Mixin的类不能有显示声明的构造方法
  //作为Mixin的类只能继承Object类
  var d = D();
  d.a(); //三个父类里都有a方法，执行结果是执行了C类中的a方法，因为class D extends A with B,C最后继承的是C，如果换成class D extends A with C,B则执行的是B里的a方法
  d.b();
  d.c();
}

class A{
  void a(){
    print("A a方法");
  }
}

class B{

  void a(){
    print("B a方法");
  } 

  void b(){
    print("B b方法");
  }
}

// class C extends Test{ 不能继承Test类只能直接继承Object类
class C{

  String name;

  // C(){}//不能添加构造方法
  // C.withName(this.name){}//同样不能添加构造方法

  void a(){
    print("C a方法");
  }

  void c(){
    print("C c方法");
  }
}

class Test{

}

//多继承写法 使用with连接多个类继承
class D extends A with B,C{

}

///////////////////////////////第二种写法//////////////////////////////////////////////////////////////////
abstract class E{
    void a();
}

//不能用继承因为不能用Mixin
class F implements E{
  @override
  void a() {
  }
  
}

class G implements E{
  @override
  void a() {
  }

}

class H{
  String name;
  int age;
}

class Test1 = H with F;//此处也是Mixin多继承方式，但是如果{}里要处理逻辑不可以这么写
//不可以写成class Test2 = H with G{}
class Test2 = H with G;

//实现路径 不同的模块自己实现 等组装的时候通过这种方式关联