main(List<String> args) {
  String a = "hello";
  String b = 'hello';
  String c = '''hello 
            dart ''';
  String d = """ hello dart """;

  print(a);
  print(b);
  print(c);
  print(d);

  print(a.substring(0,2));
  print(a.startsWith("h"));
  print(a.endsWith("e"));
  print(a.contains("ll"));
  print(a.replaceAll("ll", "r"));
  print(a.toUpperCase());
  print(a.indexOf("e"));
  print(d.trimLeft());
  print(d.trimRight());

  var list = d.split(" ");
  print(list);

  print(a + b + c + d);

  print(a * 5);

  print(a == b);

  print(b[2]);

  print(d.length);
  print(d.isEmpty);
  print(d.isNotEmpty);
} 