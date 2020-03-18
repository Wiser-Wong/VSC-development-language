abstract class Human(var name:String){
    abstract fun pee()
}

class Man(name:String) : Human(name){
    override fun pee(){
        println("${name}站着尿尿")
    }
}

class Woman(name:String) : Human(name){
    override fun pee(){
        println("${name}蹲着尿尿")
    }
}

fun main(args:Array<String>){
    //多态->同一件事不同的表现形式，都是尿尿男人和女人尿尿的方式不同
    val man1 = Man("男人1")
    val woman1 = Woman("女人1")
    val man2 = Man("男人2")
    val woman2 = Woman("女人2")

    val list = listOf<Human>(man1,woman1,man2,woman2)
    for(p in list){
        p.pee()
    }
}