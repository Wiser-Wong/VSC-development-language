//抽象类使用abstract关键字 抽象方法同样
abstract class Human(var name:String){
    abstract fun eat()
}

class Man(name:String):Human(name){
    override fun eat(){
        println("${name}比较能吃")
    }
}

class Woman(name:String):Human(name){
    override fun eat(){
        println("${name}不太能吃")
    }
}

fun main(args:Array<String>){
    var person1 = Man("林俊杰")
    person1.eat()
    var person2 = Woman("杨丞琳")
    person2.eat()
}