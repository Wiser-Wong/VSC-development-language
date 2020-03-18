main(List<String> args) {
  var a;
  a = 10;
  a = "dart";
  //a既可以是int也可以是string 即是动态类型dynamic
  dynamic b = 20;
  b = "hello dart";

  var list = new List<dynamic>();
  list.add(1);
  list.add("dart");
  list.add(true);
  print(list);
}