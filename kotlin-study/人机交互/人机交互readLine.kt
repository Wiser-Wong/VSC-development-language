fun main(args:Array<String>){
    println("请输入第一数字")
    var num1Str = readLine()
    println("请输入第二个数字")
    var num2Str = readLine()

    var num1 = num1Str!!.toInt()
    var num2 = num2Str!!.toInt()

    println("$num1 + $num2 = ${num1 + num2}")
}