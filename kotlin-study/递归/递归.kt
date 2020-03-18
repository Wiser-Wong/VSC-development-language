fun main(arg:Array<String>){
    var num = caculate(5)
    println(num)
    var num1 = caculate1(BigInteger("100"))
    println(num1)
}

//阶乘递归 注意int最大值
fun caculate(num:Int):Int{
    if(num == 1) return 1
    return num * caculate(num - 1)
}

fun caculate1(num:BigInteger):BigInteger{
    if(num == BigInteger.ONE) return BigInteger.ONE
    return num*caculate1(num - BigInteger.ONE)
}

