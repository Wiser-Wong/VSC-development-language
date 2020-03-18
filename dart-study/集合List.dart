main(List<String> args) {
  var list1 = [1,2,"hello","dart",true];
  var list2 = const {1,2,3};//不可变的list
  var list3 = new List();
  
  for(var l in list1){
      print(l);
  }

  list1[0] = 11;
  print(list1);

  list1.add("value");
  print(list1);
  list1.insert(2, "flutter");
  list1.addAll(list2);
  print(list1);

  list1.removeAt(2);
  list1.remove("dart");
  print(list1);

  print(list1.indexOf("dart"));
  print(list1.indexOf("hello"));

  print(list1.sublist(2));

  print(list1.asMap());

  list1.forEach(print);
} 