fun main(args:Array<String>){
    println(add(2, 5))

    println(add1(4, 10))

    //另一种写法
    var add2 = {x:Int,y:Int -> "$x + $y = ${x + y}"}
    //另一种写法
    var add3:(Int,Int) ->String = {x,y -> "$x + $y = ${x + y}"}

    println(add2(10,20))

    println(add3(100,100))
}

fun add(x:Int,y:Int):String{
    return "$x + $y = ${x + y}"
}

//修改add方法
fun add1(x:Int,y:Int):String = "$x + $y = ${x + y}"