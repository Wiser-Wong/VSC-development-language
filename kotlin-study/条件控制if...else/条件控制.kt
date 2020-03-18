fun main(args:Array<String>){
    print(checkScore(40))
}

fun checkScore(scroe:Int):String{
    if(scroe >= 60){
        return "及格"
    }else{
        return "不及格"
    }
}