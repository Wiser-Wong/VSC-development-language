main(List<String> args) {
  //break continue
  var list = [1,2,3,4,5];

  for (var item in list) {
    if(item == 2) break;
    print(item);
  }
  print("======================");
  for (var item in list) {
    if(item == 2) continue;
    print(item);
  }
}