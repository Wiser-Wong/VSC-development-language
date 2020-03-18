class Rect(var width:Int,var height:Int)

class Girl(var chactor:String)

fun main(args:Array<String>){
    var rect = Rect(20, 10)
    rect.width = 40
    println("宽度：${rect.width}")
    println("高度：${rect.height}")

    var girl = Girl("彪悍的很")
    println(girl.chactor)
}