main(List<String> args) {
  var func = printInfo;
  func();

  Function f = printInfo;
  f();

  var list = ["D","a","r","t"];
  print(listTimes(list,times));
}

printInfo(){
  print("我是个方法");
}

//方法当参数
List listTimes(List list,String times(str)){
  for(var i = 0; i < list.length; i++){
      list[i] = times(list[i]);
  }
  return list;
}

String times(str){
  return str * 3;
}
