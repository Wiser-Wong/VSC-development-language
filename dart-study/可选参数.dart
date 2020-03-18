main(List<String> args) {
  //可选命名参数 {p1,p2...}
  //可选位置参数 [p1,p2...]
  //默认参数值

  printInfo("Wiser");
  printInfo("Wiser",age: 20);
  printInfo("Wiser",age:30,gender:"男");
  printInfo("Wiser",gender:"女");
  printInfo2();
  printInfo2(gender: "男");
  printInfo2(age: 29,gender: "女");

  printInfo1("Wiser");
  printInfo1("Wiser",100);
  printInfo1("Wiser",101,"男");
  // printInfo1("Wiser","女");//这么写错误的 必须先写年龄 然后才是性别

  //默认参数
  printInfo3();
  printInfo3(age: 33);
}

//这种写法是错误的必须定义参数放到可选参数前面，即可选参数必须放到最后一个参数位置
// printInfo({int age,String gender},String name){
//   print("name = $name , age = $age , gender = $gender");
// }

printInfo2({int age,String gender}){
  print("age = $age , gender = $gender");
}

printInfo(String name,{int age,String gender}){
  print("name = $name , age = $age , gender = $gender");
}

printInfo1(String name,[int age,String gender]){
  print("name = $name , age = $age , gender = $gender");
}

//默认参数值 age = 20是默认值
printInfo3({int age = 20,String gender}){
  print("age = $age , gender = $gender");
}