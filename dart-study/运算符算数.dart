main(List<String> args) {
  var a = 10;
  var b = 11;

  print(a + b);
  print(a - b);
  print(a * b);
  print(a / b);
  print(a ~/ b);
  print(a % b);

  print(a++);//先使用a的值，然后将a + 
  print(++a);//先运算a + ，然后使用a的值

  print(a--);
  print(--a);
}