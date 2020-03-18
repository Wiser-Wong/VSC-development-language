fun main(args:Array<String>){
    //100000栈溢出java.lang.StackOverflowError
    var num = ollAdd(100000,0)
    println(num)
}

//累加 尾递归优化在方法上加上关键字tailrec，并且return返回是方法本身
tailrec fun ollAdd(num:Int,result:Int):Int{
    println("计算机第${num}次运算")
    if(num == 1) return result + 1
    return ollAdd(num - 1,result + num)
}