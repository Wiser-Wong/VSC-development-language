main(List<String> args) {
  var rect = Rectangle();
  rect.width = 10;
  rect.height = 5;

  print(rect.area());

  print(rect.area1);

  rect.area1 = 25;
  print(rect.area1);  
}

class Rectangle{
  num width,height;

  num area() => width * height;

  //计算属性 获取值 不是方法了
  num get area1 => width * height;

  //计算属性 设置值
  set area1(width){
    this.width = width;
  }
}