main(List<String> args) {
  //方法体中的局部变量访问只能通过闭包的方式访问

  var func = c();
  func();//count = 0;
  func();//count = 1;
  func();//count = 2;
  func();//count = 3；

  //使用b.count会报错的 无法访问a方法的内部变量
  // var b = a;
  // b.count

}

a(){

  int count = 0;

  printCount(){
    print(count++);
  }

  return printCount;
}

//另一种写法
c(){
  int count = 0;

  return (){
    print(count++);
  };
}