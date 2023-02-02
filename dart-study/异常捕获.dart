main(List<String> args) {
  try{
    var result = 12 ~/ 0;
    print(result);
  }catch(e){
    print("崩溃了 ${e.toString()}");
  }

  try{
    var result = 12 ~/ 0;
    print(result);
  }catch(e,s){
    print("崩溃了 ${e.toString()}");
    print("stack trace \n $s");//更详细的信息
  }

  try{
    var result = 12 ~/ 0;
    print(result);
  }on IntegerDivisionByZeroException{
    print("不能除以0");
  }

  try{
    //捕获特定类型的异常
  } on FormatException catch(e){
    //捕获特定类型异常，但不需要这个对象
  } on Exception{
    //捕获所有异常
  } catch(e){
    //....
  } finally{
    //....
  }

  try{
    var result = 12 ~/ 0;
    print(result);
  }catch(e){
    print("崩溃了 ${e.toString()}");
  }finally{
    print("永远会最后被执行.");
  }
  
   
}