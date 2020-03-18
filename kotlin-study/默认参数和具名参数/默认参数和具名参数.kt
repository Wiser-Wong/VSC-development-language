fun main(args:Array<String>){
    println(获取圆周长(半径 = 10f))//具体只传半径就可以，所以要指出具体的参数名=多少

    println(获取圆柱体的体积(半径=10f,高=10f))

}

val Pi = 3.14f //具名参数

fun 获取圆周长(PI:Float = Pi,半径:Float):Float = 2*PI*半径

fun 获取圆柱体的体积(PI:Float = Pi,半径:Float,高:Float):Float = PI * 半径 * 半径 * 高

