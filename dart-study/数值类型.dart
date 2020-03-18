main(List<String> args) {
  num a = 10;
  a = 12.5;
  print(a);

  int b = 11;
  // b = 12.5;

  double c = 12.5;
  c = 12;
  print(c);
  
  //+,-,*,/,~/,% 加减乘除 取整 取余
  // abs(),round(),floor(),ceil(),toInt(),toDouble 绝对值 四舍五入 取比当前数小的最大整数 取比当前数大的整数 转int型 转double型

  print(a+b);
  print(a-b);
  print(a*b);
  print(a/b);
  print(a~/b);
  print(a%b);

  print((-100).abs());
  print(11.5.round());
  print(11.5.floor());
  print(11.5.ceil());
  print(11.5.toInt());
  print(11.toDouble());

}