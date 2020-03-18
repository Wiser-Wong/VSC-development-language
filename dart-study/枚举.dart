main(List<String> args) {
//index从0开始，依次累加Test.A坐标就是0，Test.B坐标就是1...

  var type = Test.B;

  print("坐标：${type.index}");

  switch(type){
    case Test.A:
        print("A");
      break;
    case Test.B:
      print("B");
      break;
    case Test.C:
      print("C");
      break;
    case Test.D:
      print("D");
      break;
    default:
  }
}

enum Test{
  A,B,C,D
}