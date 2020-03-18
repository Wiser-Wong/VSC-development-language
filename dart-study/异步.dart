main(List<String> args) {
  print("say hello");
  Future.delayed(Duration(seconds: 5),(){
      print("我饱了");
  });
  print("我吃饭了");

  //执行多个异步之后再执行最后异步
    Future.wait([
      Future.delayed(Duration(seconds: 2),(){
        print("001");
        return 1;
      }),
      Future.delayed(Duration(seconds: 1),(){
        print("002");
        return 2;
      }),
      Future.delayed(Duration(seconds: 3),(){
        print("003");
        return 3;
      })
  ]).then((List results){//集合是返回的结果
      print("all over $results");
  });
}
