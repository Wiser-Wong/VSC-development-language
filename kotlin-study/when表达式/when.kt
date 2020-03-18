fun main(args:Array<String>){
    checkScore(99)

    println(numToChinese(4))
}

fun checkScore(score:Int){
    when(score){
        100 -> println("满分")
        60 -> println("及格")
        50 -> println("不及格")
        else -> println("啥也不是")
    }
}

fun numToChinese(num : Int):String{
    return when(num){
        1 ->"一"
        2 -> "二"
        3 -> "三"
        4 -> "四"
        else -> "其他"
    }
}