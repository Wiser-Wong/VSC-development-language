fun main(args:Array<String>){
    var a = "10"
    var b = 11

    a = b.toString()
    println(a)
    b = a.toInt()
    println(b)

    var c = "a12"
    b = c.toInt()//报错 因为a12不是是数字
    println(b)
}