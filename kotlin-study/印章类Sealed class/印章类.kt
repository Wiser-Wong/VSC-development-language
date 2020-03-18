/**
 * 小母驴，小公驴，小公马生下来的儿子 sealed class 作用就是子类的类型有限的固定的class，
 * 这三个驴马生下来的儿子只能是驴或者骡子或者马，类型固定
 */
sealed class Son{

    fun sayHello(){
        println("大家好！")
    }

    class 小小驴():Son()
    class 小骡子():Son()
}

fun main(args:Array<String>){
    val son1 = Son.小小驴()
    val son2 = Son.小骡子()

    val list = listOf<Son>(son1,son2)
    for(s in list){
        if(s is Son.小小驴)
            s.sayHello()
    }
}