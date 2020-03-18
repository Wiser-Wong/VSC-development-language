fun main(args:Array<String>){
    println(heat(null))//如果heat方法没有处理空这么写编译报错,当方法中加入了？则这么写不报错

    val s:String?

    s = "Wiser"

    println("s = $s")

    val user:User? = User("王翔宇")
    user?.name = "wangxiangyu"
    println("name = ${user?.name}")

    val user1:User? = null
    user1?.name = "牛顿" //如果user1是null则不执行这段代码 相当于Java里的if判空判断
    println("name = ${user1?.name}")

    user1!!.name = "爱因斯坦" //如果user1是空 则直接报空指针异常
    println("name = ${user1.name}")
}

fun heat(str:String?):String{
    return "热"+str
}

class User(var name:String);

