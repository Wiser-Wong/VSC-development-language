/**
 * 去掉class 关键字 添加object关键字 则是单例类
 */
object Person{
    fun eat(){
        println("我能吃的很多")
    }
}

fun main(args:Array<String>){
    Person.eat()
}

