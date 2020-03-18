class Girl(var chactor:String,var voice:String){
    //动态行为
    fun smaile(){
        println("妹子笑点好可爱哦，么么哒")
    }
    //动态行为
    fun cry(){
        println("呜呜呜，人家伤心了。")
    }
}

fun main(args:Array<String>){
    var girl = Girl("彪悍","声音甜美");
    girl.smaile()
    girl.cry()
}