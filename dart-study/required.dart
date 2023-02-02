main(List args) {
  // 主要用于允许根据需要标记任何命名参数（函数或类），使得它们不为空。因为可选参数中必须有个 required 参数或者该参数有个默认值。
  person(name: "大黄", age: 12);
}

person({required String name, required int age}) {
  print("name = $name , age = $age");
}