main(List<String> args) {
  //static 类级别的不是对象级别的
  //静态成员不能访问非静态成员，非静态成员可以访问静态成员
  //类中的变量需要使用static const声明

  var page = Page();
  page.scrollDown();

  var page1 = Page1();
  // page1.scrollDown();//报错 静态不可以用对象访问
  Page1.scrollDown();//需要用类访问
}

class Page{
  int currentPage = 0;

  scrollDown(){
    currentPage--;
    print("下滑");
  }

  scrollUp(){
    currentPage++;
    print("上滑");
  }
}

class Page1{

  static const int maxPage = 10;//const声名报错 需要加上static
  static int currentPage = 0;

  static void scrollDown(){
    currentPage--;
    print("下滑");
  }

  scrollUp(){
    currentPage++;
    print("上滑");
  }
}