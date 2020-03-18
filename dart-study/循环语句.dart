main(List<String> args) {
  // for for...in while do...while
  var list = [1,2,3,4,5];
  for(var i = 0; i < list.length; i++){
    print(list[i]);
  }
  print("===========================");
  for(var l in list){
    print(l);
  }
  print("===========================");
  int count = 0;
  while(count < 5){
    print(count++);
  }
  print("===========================");
  do{
    //先执行do里面语句然后在执行while判断
    print(count--);
  }while(count > 0 && count < 5);
}