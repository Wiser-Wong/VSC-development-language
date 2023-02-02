main(List<String> args) {
  // = , ??=
  // += , -= , *= , /= , %= , ~/=

  int a = 1;
  int? b;
  int c = 2;
  double d = 21;
  int e = 21;
  b ??= 10; //如果初始值没有赋值，则使用??= 后面值
  c ??= 10; //如果初始值有赋值,则使用初始值
  print(b);
  print(c);

  print(a += 2);
  print(a -= 1);
  print(a *= 3);
  print(d /= 2);
  print(e ~/= 2);
  print(a %= 2);
}