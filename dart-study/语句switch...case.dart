main(List<String> args) {
  //swith...case
  var a = "Java";
  switch (a) {
    case "Java":
      print("我是Java");
      break;
    case "Kotlin":
      print("我是kotlin");
      break;
    default:
      print("none");
  }
  var b = 1;
  switch (b) {
    case 1:
      print("我是1");
      break;
    case 2:
      print("我是2");
      break;
    default:
  }

var c = "Kotlin";
  switch (c) {
    J:
    case "Java":
      print("我是Java");
      break;
    case "Kotlin":
      print("我是kotlin");
      continue D;//D是随便定义的字符，continue执行D下面的case语句
      // break;
    D:
    case "Dart":
      print("我是Dart");
      continue J;
    default:
      print("none");
  }
}