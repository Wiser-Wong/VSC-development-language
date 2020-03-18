main(List<String> args) {
  print(get1("Wiser",22));

  print(get2("Wiser","24"));

  printInfo1("Wiser", 19);

  printInfo2("Wiser", "10");

  print(get3("Wiser","100"));

  print(get4("Wiser",102));

  //没有返回值默认返回null
  print(printInfo2("Wiser", "10"));
}

String get1(String name,int age){
  return "名字：${name} 年龄：${age}";
}

get2(name,age){
  return "名字：${name} 年龄：${age}"; 
}

void printInfo1(String name,int age){
  print("名字：${name} 年龄：${age}");
}

//void可以省略 String int类型也可以省略
printInfo2(name,age){
  print("名字：${name} 年龄：${age}");
}

//=>语法
get3(name,age) => "名字：${name} 年龄：${age}";

//表达式
int a = 2;
get4(name,age) => a == 1 ? "名字：${name} 年龄：${age}" : "不是1";