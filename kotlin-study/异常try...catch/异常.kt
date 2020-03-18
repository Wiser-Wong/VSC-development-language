fun main(args:Array<String>){
    val a = 10;
    val b = 0;
    try{
        println(a/b);
    }catch(e : Exception){
        println("被除数不能为0哦！");
    }
}