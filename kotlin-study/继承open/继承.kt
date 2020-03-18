//继承关键字open只有父类使用open关键字打开才可被继承
/**
 * 父亲
 */
open class Father{
    var chactor:String = "性格内向"
    //儿子重写父类的方法也需要加上open关键字
    open fun action(){
        println("公共场合喜欢大声喧哗")
    }
}

/**
 * 孩子
 */
class Son:Father(){
    override fun action(){
        println("喜欢玩具")
    }
}

fun main(args:Array<String>){
    var son = Son()
    println("儿子的性格${son.chactor}")
    son.action()
}