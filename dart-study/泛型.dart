main(List<String> args) {
  var list = [];
  list.add(1);

  var test = Test<String>();
  test.putData("1");

  var test1 = Test<int>();
  test1.putData(1);

  var test2 = Test<bool>();
  test2.putData(true);

  var test3 = Test1();
  test3.putData("test");
  test3.putData(111);
  test3.putData<bool>(true);
  test3.putData<String>("泛型方法字符串");
}

//类泛型
class Test<A>{
    A? element;

    void putData(A element){
      this.element = element;
    }
}

//方法泛型
class Test1{

    void putData<T>(T t){
      print(t);
    }
}