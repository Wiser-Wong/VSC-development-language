enum class Week{
    星期一,星期二,星期三,星期四,星期五,星期六,星期日
}

fun main(args:Array<String>){
    println("值是${Week.星期六}")
    println("坐标是${Week.星期六.ordinal}")
}