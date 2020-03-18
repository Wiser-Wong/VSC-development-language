main(List<String> args) async {
  //async + await用法
  print("say hello");
  //等待异步执行完 在执行后面语句
  await Future.delayed(Duration(seconds: 3),(){
    print("吃饭了");
  });
  print("吃饱了");

  await Future.delayed(Duration(seconds: 2),(){
      print("001");
  });
  await Future.delayed(Duration(seconds: 1),(){
      print("002");
  });
  await Future.delayed(Duration(seconds: 3),(){
      print("003");
  });
}