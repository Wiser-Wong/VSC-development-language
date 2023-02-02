main(List<String> args) {
  var func = (str){
      print("${str} 匿名方法");
  };
  func("Wiser");

  ((){
    print("Hello");
  })();

  var list = ["D","a","r","t"];
  //匿名方法（str）{return str * 3}
  print(listTimes(list,(str){return str * 3;}));

  print(listTimes1(list));

} 

//方法当参数
List listTimes(List list,String times(str)){
  for(var i = 0; i < list.length; i++){
      list[i] = times(list[i]);
  }
  return list;
}

//方法当参数
List listTimes1(List list){
  //匿名内部
  var times = (str){return str * 2;};
  for(var i = 0; i < list.length; i++){
      list[i] = times(list[i]);
  }
  return list;
}
