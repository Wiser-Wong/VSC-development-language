/**
 * 男人接口
 */
interface IMan{
    fun strong()
}

interface IWoman{
    fun soft()
}

abstract class Human(var name:String){
    abstract fun eat()
}

class Man(name:String) :Human(name), IMan{
    override fun strong(){
        println("${name}很强壮")
    }

    override fun eat(){
        println("${name}很能吃")
    }
}

class Woman(name:String) :Human(name), IWoman{
    override fun soft(){
        println("${name}很软弱")
    }

    override fun eat(){
        println("${name}不能吃")
    }
}

fun main(args:Array<String>){
    val man = Man("林俊杰")
    man.strong()
    man.eat()
    val woman = Woman("杨丞琳")
    woman.soft()
    woman.eat()

    val list = listOf<Human>(man,woman)
    for(p in list){
        if(p is Man){
            p.eat()
        }
    }
}