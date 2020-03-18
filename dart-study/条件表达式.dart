main(List<String> args) {
  //三目运算符 a ? b : c
  //?? 
  bool a = true;
  String gender = a ? "男 = $a" : "女 = $a";
  print(gender);

  String b;
  String c = "Java";
  String d = "Dart";
  String e = b ?? c;//左边值是空的将右边值赋给变量,如果左边值不是空的，则直接赋值左边值
  String f = d ?? c;
  print(e);
  print(f);

}